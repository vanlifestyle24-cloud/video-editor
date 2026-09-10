# Video Editor

AI-powered video editing pipeline using GitHub Actions.

## Folder Structure

```
video-editor/
├── raw/                    # Put your raw videos here
├── edited/                 # Edited videos appear here (via GitHub Actions)
├── .github/workflows/      # GitHub Actions workflows
├── tools/                  # Video editing tools (created by AI Video Editor workflow)
├── requirements.txt        # Python dependencies
├── sync-videos.ps1         # Desktop sync script
└── README.md
```

## How to Use

### Option 1: Basic Video Edit Pipeline

1. Put raw video in `raw/` folder
2. Go to Actions tab → Select "Video Edit Pipeline"
3. Choose editing mode:
   - `basic_trim` - Basic trim
   - `color_grade` - Color grading
   - `add_subtitles` - Add subtitles
   - `full_automation` - Full automation for YouTube Shorts (1080x1920)
4. Download edited video from artifacts

### Option 2: AI Video Editor (Advanced)

1. Put raw video in `raw/` folder
2. Go to Actions tab → Select "AI Video Editor"
3. Enter video filename and editing instructions
4. Download AI edited video from artifacts

### Desktop Sync

To automatically sync videos from your Desktop `RawVideos` folder:

```powershell
cd C:\Users\Mustafa\Desktop\video-editor
.\sync-videos.ps1
```

## Output

- Edited videos are Full HD (1080x1920 for Shorts) or original resolution
- Output is H.264 with AAC audio
- Download from Actions artifacts → save to `Desktop/OutputVideos/`

## Tools Used

- **FFmpeg** - Core video processing
- **video-use** - AI assistant video editing toolkit
- **montaj** - CLI video editing for AI agents
- **moviepy** - Python video editing library