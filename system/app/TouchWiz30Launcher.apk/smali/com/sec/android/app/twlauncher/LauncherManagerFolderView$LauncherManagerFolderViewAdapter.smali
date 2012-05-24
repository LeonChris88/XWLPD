.class Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
.super Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.source "LauncherManagerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherManagerFolderViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;->this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v1, 0x0

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    const v1, 0x7f030009

    :cond_0
    :goto_0
    invoke-super {p0, v0, p2, p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLongClickable(Z)V

    move-object v4, v2

    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIgnoreDrawableStateChanges(Z)V

    move-object v4, v2

    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusableInTouchMode(Z)V

    return-object v2

    :cond_1
    const v1, 0x7f030002

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
