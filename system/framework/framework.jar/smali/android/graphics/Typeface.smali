.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final DROID_SANS_MONO_PATH:Ljava/lang/String; = "/system/fonts/DroidSansMono.ttf"

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_MONOSPACE:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_SERIF:Landroid/graphics/Typeface; = null

.field private static final FLIP_ALL_APPS:Z = false

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field public static final FlipFontAppList:[Ljava/lang/String; = null

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static FlipFontPathCached:Ljava/lang/String; = null

.field private static FlipFontPathMonospace:Ljava/lang/String; = null

.field private static FlipFontPathSerif:Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field private static final LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/"

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field private static final MONOSPACE_INDEX:I = 0x3

.field private static final MONOSPACE_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/monospace.loc"

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final SERIF_INDEX:I = 0x2

.field private static final SERIF_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/serif.loc"

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;


# instance fields
.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_SERIF:Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v0, "none"

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPathCached:Ljava/lang/String;

    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.monotype.wfall"

    aput-object v2, v0, v5

    const-string v2, "com.android.apps.tag"

    aput-object v2, v0, v6

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "com.android.calculator2"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.android.camera"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.android.certinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.android.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "com.android.deskclock"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "com.android.development"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "com.android.email"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "com.android.inputmethod.latin"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "com.android.inputmethod.pinyin"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "com.android.launcher"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "com.android.launcher2"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "com.android.mms"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "com.android.music"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "com.android.musicvis"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "com.android.nfc3"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "com.android.packageinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "com.android.phone"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "com.android.protips"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "com.android.providers.applications"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "com.android.providers.calendar"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "com.android.providers.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "com.android.providers.downloads"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "com.android.providers.downloads.ui"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "com.android.providers.drm"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "com.android.providers.media"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "com.android.providers.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "com.android.providers.subscribedfeeds"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "com.android.providers.telephony"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "com.android.providers.userdictionary"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "com.android.provision"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "com.android.quicksearchbox"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "com.android.server.vpn"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "com.android.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "com.android.smspush"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "com.android.soundrecorder"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "com.android.spare_parts"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "com.android.systemui"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "com.android.voicedialer"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "com.android.wallpaper"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "com.android.wallpaper.livepicker"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "com.cooliris.media"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "jp.co.omronsoft.openwnn"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "com.example.helloandroid"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "com.monotype.test"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getFontPathFlipFont(I)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x1

    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/graphics/Typeface;->FlipFontPathCached:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_0

    :goto_0
    return-object v9

    :cond_0
    const-string v10, "empty"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_1

    const-string/jumbo v10, "none"

    sget-object v11, Landroid/graphics/Typeface;->FlipFontPathCached:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v9, Landroid/graphics/Typeface;->FlipFontPathCached:Ljava/lang/String;

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_0

    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v8, "none"

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    move-object v0, v1

    move-object v6, v7

    :goto_2
    if-nez v8, :cond_2

    const-string/jumbo v9, "none"

    goto :goto_0

    :pswitch_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/serif.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/monospace.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_3
    const-string v8, ""

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_4
    const-string v8, ""

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    sput-object v8, Landroid/graphics/Typeface;->FlipFontPathCached:Ljava/lang/String;

    const-string/jumbo v10, "persist.sys.flipfontpath"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v6, v7

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v0, v1

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v6, v7

    goto :goto_4

    :catch_5
    move-exception v4

    move-object v6, v7

    goto :goto_3

    :catch_6
    move-exception v4

    move-object v0, v1

    move-object v6, v7

    goto :goto_3

    :catch_7
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v6, v7

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTypefaceFlipFont(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v2, v1

    :goto_1
    return-object v2

    :pswitch_1
    invoke-static {}, Landroid/graphics/Typeface;->setTypefaceFlipFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_4
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_5
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method

.method private static setTypefaceFlipFont()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v2, ""

    invoke-static {v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v1, ""

    const-string v2, ""

    :goto_0
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "DroidSans.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v5, v3, v4

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v4, v3, v6

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v4, v3, v7

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v4, v3, v8

    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    goto :goto_3
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    return-void
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    return v0
.end method

.method public final isBold()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
