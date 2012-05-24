.class Lcom/android/email/activity/MessageListXL$10;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupAccountView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p3}, Lcom/android/email/activity/MessageListXL;->access$4402(I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4400()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$3002(J)J

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$3302(Lcom/android/email/activity/MessageListXL;J)J

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
