.class public Lcom/android/email/activity/MoveMessageToDialog;
.super Landroid/app/DialogFragment;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;,
        Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;,
        Lcom/android/email/activity/MoveMessageToDialog$Callback;,
        Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    }
.end annotation


# static fields
.field private static sHasDialog:Z


# instance fields
.field private mConvIds:[Ljava/lang/String;

.field private mCurrentAccountId:J

.field private mCurrentMailboxId:J

.field private mCursor:Landroid/database/Cursor;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListOrigin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

.field private mMessageIds:[J

.field private mMoveType:I

.field private mVisibleAccountId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sNeedToDismiss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MoveMessageToDialog;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    return-object v0
.end method

.method private getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static hasShowingDialog()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    return v0
.end method

.method public static newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;
    .locals 3

    array-length v2, p1

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    :cond_0
    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MoveMessageToDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "move_type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "conversation_ids"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "message_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setArguments(Landroid/os/Bundle;)V

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/email/activity/MoveMessageToDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-object v0, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxName:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-wide v11, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->remove(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-wide v2, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-wide v0, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    invoke-virtual {v0, v10}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    :goto_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    iget-wide v3, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    iget-object v6, p0, Lcom/android/email/activity/MoveMessageToDialog;->mConvIds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    iget-wide v3, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    iget v6, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    invoke-interface/range {v0 .. v6}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveToMailboxSelected(JJ[JI)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "move_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mConvIds:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    const/4 v0, 0x0

    const v1, 0x103006e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v18

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const-wide/16 v4, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, -0x1

    const/16 v23, -0x1

    const/16 v35, -0x1

    const/16 v21, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x0

    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v36, 0x0

    const/16 v37, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    aget-wide v26, v19, v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v31

    if-eqz v31, :cond_2

    move-object/from16 v0, v31

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    move-object/from16 v0, v31

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    :cond_0
    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-static {v3, v7}, Lcom/android/email/activity/MoveMessageToDialog;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v35

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v3, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v21

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    cmp-long v3, v4, v7

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    move/from16 v0, v35

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    move/from16 v0, v35

    if-eq v0, v3, :cond_1

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    if-nez v36, :cond_5

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;-><init>(Lcom/android/email/activity/MoveMessageToDialog;JLjava/lang/String;JILjava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    const/4 v11, 0x0

    move-object v7, v2

    move-object/from16 v8, p0

    move-wide v9, v4

    invoke-direct/range {v7 .. v15}, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;-><init>(Lcom/android/email/activity/MoveMessageToDialog;JLjava/lang/String;JILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    cmp-long v3, v7, v12

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_8

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    const/16 v24, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    :catch_0
    move-exception v22

    const-string v3, "MoveMessageToDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    :cond_d
    new-instance v3, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f04006d

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v7, v8, v1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method

.method public setMailboxCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    return-void
.end method
