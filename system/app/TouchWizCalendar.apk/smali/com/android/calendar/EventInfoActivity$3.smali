.class Lcom/android/calendar/EventInfoActivity$3;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$500(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$600(Lcom/android/calendar/EventInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v3}, Lcom/android/calendar/EventInfoActivity;->access$700(Lcom/android/calendar/EventInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoActivity;->access$800(Lcom/android/calendar/EventInfoActivity;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$500(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    add-int/2addr v2, v0

    if-ne p2, v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1000(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2, p2}, Lcom/android/calendar/EventInfoActivity;->access$1102(Lcom/android/calendar/EventInfoActivity;I)I

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2, p2}, Lcom/android/calendar/EventInfoActivity;->access$1202(Lcom/android/calendar/EventInfoActivity;I)I

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EventInfoActivity$3$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/EventInfoActivity$3$1;-><init>(Lcom/android/calendar/EventInfoActivity$3;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditResponseHelper;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v3}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method
