.class Lcom/android/email/activity/MessageListXL$7;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->createListByDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$7;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_4

    if-ne p2, v4, :cond_1

    const/16 p2, 0x8

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$7;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$7;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4200(Lcom/android/email/activity/MessageListXL;)V

    return-void

    :cond_1
    if-ne p2, v5, :cond_2

    const/16 p2, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    const/16 p2, 0xa

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    const/16 p2, 0xb

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$3000()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    if-ne p2, v4, :cond_0

    const/16 p2, 0xb

    goto :goto_0

    :cond_5
    if-ne p2, v5, :cond_0

    const/16 p2, 0xb

    goto :goto_0
.end method
