.class Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailboxChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1808(Lcom/android/email/activity/MessageListFragment;)I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessagesAdapter;->compareCount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    const-string v7, "MessageListFragment"

    const-string v8, "cursorError happend in onLoadFinished"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getListItemCountNew()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "MessageListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursorError happend in onLoadFinished ListItemCountNew = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getListItemCountNew()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cursor.getCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2000(Lcom/android/email/activity/MessageListFragment;)Landroid/database/Cursor;

    move-result-object v7

    if-ne p2, v7, :cond_9

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_a

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_c

    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->setAdapterInfo()V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getUnreadCount()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2602(Lcom/android/email/activity/MessageListFragment;I)I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getTotalCount()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2702(Lcom/android/email/activity/MessageListFragment;I)I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    :cond_4
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-gez v7, :cond_e

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v8, v7}, Lcom/android/email/activity/MessagesAdapter;->setShowColorChips(Z)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2900(Lcom/android/email/activity/MessageListFragment;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v6

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$100(Lcom/android/email/activity/MessageListFragment;)I

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3000(Lcom/android/email/activity/MessageListFragment;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3100(Lcom/android/email/activity/MessageListFragment;)V

    :cond_6
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3200(Lcom/android/email/activity/MessageListFragment;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v7, v7, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v7}, Lcom/android/email/activity/ListBouncingHeaderLayout;->getHeaderVisible()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    sget v9, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-static {v7, v8, v9}, Lcom/android/email/activity/MessageListFragment;->access$3300(Lcom/android/email/activity/MessageListFragment;ZI)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    :cond_8
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v10}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v10

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/email/activity/MessageListFragment;->resetNewMessageCount(Landroid/content/Context;JJ)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;I)I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7, p2}, Lcom/android/email/activity/MessageListFragment;->access$2002(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    :try_start_1
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v3

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_d
    :try_start_2
    new-instance v4, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto/16 :goto_3

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
