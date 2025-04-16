![Trunk Recorder](https://raw.githubusercontent.com/TrunkRecorder/trunk-recorder/refs/heads/master/docs/media/trunk-recorder-header.png)
---
[![Discord](https://raw.githubusercontent.com/TrunkRecorder/trunk-recorder/refs/heads/master/docs/media/discord.jpg)](https://discord.gg/btJAhESnks) &nbsp;&nbsp;

## Trunk Recorder Homebrew Formulas

The Homebrew Package manager contains all the required dependencies to build Trunk Recorder and [gr-osmosdr](https://osmocom.org/projects/sdr/wiki/GrOsmoSDR).

The included formula for `gr-osmosdr` v0.2.6 has been updated from the [original](https://github.com/Homebrew/homebrew-core/commit/593566b87c28e333e607ef69c224541278a66614) that left `homebrew-core` for compatibility reasons.

## Installation

1. Install [Homebrew](https://brew.sh)

2. Add this GitHub repository as a third-party [tap](https://docs.brew.sh/Taps)

    ```
    brew tap trunkrecorder/install
    ```

3. Install Trunk Recorder

   | Version                     |                                               |
   | --------------------------- | --------------------------------------------- |
   | Stable release v5.0.1       | <pre>brew install trunk-recorder</pre>        |
   | Latest GitHub (recommended) | <pre>brew install trunk-recorder --head</pre> |

4. [Configure](https://github.com/TrunkRecorder/trunk-recorder/blob/master/docs/CONFIGURE.md) Trunk Recorder for your system

## Uninstallation

1. Remove packages provided by this tap
   
    ```
    brew remove trunk-recorder gr-osmosdr
    ```

2. Untap the GitHub repository
   
    ```
    brew untap trunkrecorder/install
    ```