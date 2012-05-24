.class Lcom/android/calendar/EventInfoActivity$3$1;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/EventInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/EventInfoActivity;->access$1000(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/EventInfoActivity;->access$900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    iget-object v2, v2, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1200(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$3$1;->this$1:Lcom/android/calendar/EventInfoActivity$3;

    iget-object v1, v1, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v1}, Lcom/android/calendar/EventInfoActivity;->access$1200(Lcom/android/calendar/EventInfoActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoActivity;->access$1102(Lcom/android/calendar/EventInfoActivity;I)I

    return-void
.end method
