.class Lcom/sec/android/app/twlauncher/ShadowedChildManager;
.super Ljava/lang/Object;
.source "ShadowedChildManager.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    }
.end annotation


# instance fields
.field private mChildren:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

.field private mSuspendUpdates:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    return v0
.end method


# virtual methods
.method public drawAllShadowsWithClipping(Lcom/sec/android/app/twlauncher/GLCanvas;II)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->drawShadow(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->drawView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public invalidateAtLocation([I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    aget v3, p1, v4

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    aget v3, p1, v5

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->invalidate()V

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;-><init>(Lcom/sec/android/app/twlauncher/ShadowedChildManager;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->invalidate()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resumeUpdates()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    return-void
.end method

.method public suspendUpdates()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    return-void
.end method
