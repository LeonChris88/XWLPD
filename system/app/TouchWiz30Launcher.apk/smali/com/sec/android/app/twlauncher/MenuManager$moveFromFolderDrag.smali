.class Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "moveFromFolderDrag"
.end annotation


# instance fields
.field mDragView:Landroid/view/View;

.field mOrigIconX:I

.field mOrigIconY:I

.field mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/UserFolder;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mDragView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconX:I

    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconY:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mDragView:Landroid/view/View;

    new-instance v4, Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconY:I

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    return-void
.end method
