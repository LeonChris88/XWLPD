.class Lcom/sec/android/app/twlauncher/ApplicationInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "ApplicationInfo.java"


# instance fields
.field private badgeCount:I

.field bg:Landroid/graphics/drawable/Drawable;

.field private cellNum:I

.field private componentName:Ljava/lang/String;

.field private customIcon:Z

.field private editCellNum:I

.field private editPageNum:I

.field private filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field private intent:Landroid/content/Intent;

.field protected isDirty:Z

.field private mCreateTime:J

.field private mDefaultSort:I

.field private mEditParentId:J

.field mIsAppStoredInExternalStorage:Z

.field mIsAppStoredInExternalStorageWhileUnmounted:Z

.field private mParentId:J

.field private pageNum:I

.field private systemApp:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public assignEditToNormal()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    if-eq v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public assignFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    :cond_1
    return-void
.end method

.method public assignNormalToEdit()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    return-void
.end method

.method public copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return-void
.end method

.method public getBadgeCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    return v0
.end method

.method public getCellNum()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getDefaultSort()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    return v0
.end method

.method public getEditCellNum()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    return v0
.end method

.method public getEditPageNum()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    return v0
.end method

.method public getParentId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return v0
.end method

.method public isFiltered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    return v0
.end method

.method public markAsClean()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v4, "title"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "intent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    if-eqz v3, :cond_3

    const-string v3, "iconType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    const-string v3, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_0

    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    return-void
.end method

.method public setCellNum(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreateTime(J)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultSort(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    return-void
.end method

.method public setEditCellNum(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    return-void
.end method

.method public setEditModeInfo(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    return-void
.end method

.method public setEditPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    return-void
.end method

.method public setFiltered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setIsCustomIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    return-void
.end method

.method public setNormalModeInfo(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    return-void
.end method

.method public setPageNum(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParentId(J)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBadgeCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    return v1
.end method
