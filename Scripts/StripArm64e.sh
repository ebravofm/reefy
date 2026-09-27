#!/bin/sh

# App Store Connect rejects arm64e slices in third-party apps. MPVUI's tvOS
# Libmpv.xcframework ships arm64 + arm64e, so remove arm64e from embedded
# frameworks and re-sign them before the app itself is signed.

[ "$PLATFORM_NAME" = "appletvos" ] || exit 0

frameworks="${TARGET_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
[ -d "$frameworks" ] || exit 0

for framework in "$frameworks"/*.framework; do
    [ -d "$framework" ] || continue

    binary="$framework/$(basename "$framework" .framework)"
    [ -f "$binary" ] || continue

    if lipo -archs "$binary" | grep -qw arm64e; then
        lipo -remove arm64e "$binary" -output "$binary" || exit 1
        echo "Removed arm64e from $(basename "$framework")"

        if [ -n "$EXPANDED_CODE_SIGN_IDENTITY" ]; then
            codesign --force --sign "$EXPANDED_CODE_SIGN_IDENTITY" --preserve-metadata=identifier,entitlements "$framework" || exit 1
        fi
    fi
done
