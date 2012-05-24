.class Lcom/android/email/activity/MessageCompose$20;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$20;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v6, 0x7f100142

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f1000fc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$20;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080510

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$20;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/email/EmailAddressAdapter;->doGalSearch(I)V

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$20;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$3800(Lcom/android/email/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1771

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string v6, "(Group)"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$20;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v2}, Lcom/android/email/activity/MessageCompose;->access$3900(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
