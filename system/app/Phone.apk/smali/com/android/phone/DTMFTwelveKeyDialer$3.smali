.class Lcom/android/phone/DTMFTwelveKeyDialer$3;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd close:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$600(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart close :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Ljava/lang/String;)V

    return-void
.end method
