.class Lcom/android/phone/InVTCallScreen$29;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/16 v2, 0x9

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$7700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image and isSurfaceViewSwipe is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mDisp_Small is false.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mDisp_Small is false.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for near end surface view  for Own Image isSurfaceViewSwipe is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$8702(Z)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1
.end method
