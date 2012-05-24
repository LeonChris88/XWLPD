.class Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "postLayoutAnimateToMM"
.end annotation


# instance fields
.field private mAnimInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuManager$animInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object p1, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    iput-object p2, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mSrc:Landroid/graphics/PointF;

    iput-object p3, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public post(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->mAnimInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mView:Lcom/sec/android/app/twlauncher/MenuItemView;

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mSrc:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
