.class Lcom/android/settings/motion/DoubleTapTryActually$5;
.super Ljava/lang/Object;
.source "DoubleTapTryActually.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapTryActually;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTryActually;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapTryActually;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    iget-object v0, v0, Lcom/android/settings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    iget-object v0, v0, Lcom/android/settings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTryActually;->access$200(Lcom/android/settings/motion/DoubleTapTryActually;)V

    return-void
.end method
