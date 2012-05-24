.class Lcom/sec/android/app/twlauncher/Widget;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "Widget.java"


# instance fields
.field layoutResource:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    return-void
.end method

.method static makeSearch()Lcom/sec/android/app/twlauncher/Widget;
    .locals 2

    new-instance v0, Lcom/sec/android/app/twlauncher/Widget;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/Widget;-><init>()V

    const/16 v1, 0x3e9

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    const v1, 0x7f03001b

    iput v1, v0, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    return-object v0
.end method
