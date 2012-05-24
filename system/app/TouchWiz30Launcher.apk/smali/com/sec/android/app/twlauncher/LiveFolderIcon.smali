.class public Lcom/sec/android/app/twlauncher/LiveFolderIcon;
.super Lcom/sec/android/app/twlauncher/FolderIcon;
.source "LiveFolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->filtered:Z

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
