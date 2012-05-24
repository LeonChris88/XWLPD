.class Lcom/sec/android/app/twlauncher/FolderInfo;
.super Lcom/sec/android/app/twlauncher/ApplicationInfo;
.source "FolderInfo.java"


# instance fields
.field opened:Z

.field private owner:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    return-void
.end method


# virtual methods
.method public getOwner()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->owner:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    return v0
.end method

.method public setOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    return-void
.end method

.method public setOwner(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->owner:I

    return-void
.end method
