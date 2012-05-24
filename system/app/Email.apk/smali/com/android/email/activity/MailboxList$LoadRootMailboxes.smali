.class Lcom/android/email/activity/MailboxList$LoadRootMailboxes;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRootMailboxes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->mAccountKey:J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1 AND displayName=?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v7}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 17

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v8, 0x0

    const/4 v14, -0x1

    const/4 v13, -0x1

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v1

    if-ne v2, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    move v14, v12

    :cond_0
    const/4 v1, -0x1

    if-eq v14, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v15, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/email/activity/MailboxList;->access$1502(Lcom/android/email/activity/MailboxList;Z)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v16, v13, 0x1

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {v1 .. v10}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
