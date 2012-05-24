.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;,
        Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;,
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# static fields
.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static menu:Landroid/view/Menu;

.field public static sRemoveIrmProtectionFlag:I


# instance fields
.field private enableMoveToNewerForViewer:Z

.field private enableMoveToOlderForViewer:Z

.field private hasMailboxToMove:Z

.field private irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMessageViewCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field private mCurrentMessageId:J

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFromSocialHub:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIconDown:Landroid/widget/ImageView;

.field private mHeaderIconUp:Landroid/widget/ImageView;

.field private mInviteSection:Landroid/view/View;

.field private mIsSending:Z

.field private mLayout:Landroid/view/View;

.field private final mLock:Ljava/lang/Object;

.field private mMailboxId:J

.field private mMailboxType:I

.field public mMessageIdToOpen:J

.field private mPreviousMeetingResponse:I

.field private mPreviousMeetingResponseMsgId:J

.field private mReplyAllAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mResultCallback:Lcom/android/email/Controller$Result;

.field private mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH-mm-ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageViewFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageViewFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onForward()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteSmsPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    return-wide v0
.end method

.method private enableReplyForwardButtons(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onClickFavorite()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    const-string v6, "eas"

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    :goto_1
    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    new-array v1, v4, [J

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v6, v1, v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    :goto_2
    return-void

    :pswitch_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_4
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-boolean v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v6, :cond_1

    move v3, v4

    :goto_3
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    new-array v1, v4, [J

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v6, v1, v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onCompose()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCompose()V

    return-void
.end method

.method private onDelete()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageDelete()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/app/Activity;J)V

    return-void
.end method

.method private onDeleteCalEventClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageViewFragment$10;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onDeleteSmsPopup()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragment$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragment$6;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080043

    new-instance v3, Lcom/android/email/activity/MessageViewFragment$7;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragment$7;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onForward()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    return-void
.end method

.method private onInviteLinkClicked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v2, "DTSTART"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meetingInfo without DTSTART "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMarkAsUnread()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    return-void
.end method

.method private onMove()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMoveMessage()V

    return-void
.end method

.method private onRespondToInvite(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget v3, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-ne v3, p1, :cond_0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    and-int/lit8 v3, p1, 0x3

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0060

    const v5, 0x7f040060

    invoke-static {v3, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MessageViewFragment$9;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/android/email/activity/MessageViewFragment$9;-><init>(Lcom/android/email/activity/MessageViewFragment;IILcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MessageViewFragment$8;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragment$8;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearContent()V
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public controlViewCustomView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableNavigationButtonsOnView(ZZII)V
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getFromSocialHubState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    return v0
.end method

.method protected isMessageSpecified()Z
    .locals 6

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadViewCustomView()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    const v1, 0x7f08015c

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    const v1, 0x7f08015d

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    const v1, 0x7f08015e

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionProposeNewTime(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001d6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToOlderView()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToNewerView()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteCalEventClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001f9
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f1000d7 -> :sswitch_3
        0x7f1000d8 -> :sswitch_2
        0x7f1001d7 -> :sswitch_4
        0x7f1001dc -> :sswitch_1
        0x7f1001f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageViewFragment >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] newConfig.orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageViewFragment >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->updateNavigationButtonsOnView(ZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged setActionBarCustomForMessageView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11

    const v10, 0x7f1002fb

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x7f0f0024

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sput-object p1, Lcom/android/email/activity/MessageViewFragment;->menu:Landroid/view/Menu;

    const-string v4, "MessageViewFragment >>"

    const-string v5, "[HJP] onCreateOptionsMenu() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f1002e5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v4, 0x7f100306

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f1002c8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f1002e3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v4, :cond_6

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    if-eqz v4, :cond_1

    const v4, 0x7f100307

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f100309

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$2;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$3;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$4;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$5;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$5;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v4

    if-le v4, v9, :cond_7

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLayout:Landroid/view/View;

    const v1, 0x7f1001d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mInviteSection:Landroid/view/View;

    const-string v1, "MessageViewFragment >>"

    const-string v2, "[HJP] onCreateView() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MessageViewFragment >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] newConfig.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MessageViewFragment >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1001d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    const v1, 0x7f1001d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    const v1, 0x7f1001d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setupReplyAllView()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mInviteSection:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    return-void
.end method

.method public onMarkMessageAsRead(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v2, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    const/4 v2, 0x1

    new-array v1, v2, [J

    const/4 v2, 0x0

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v3, v1, v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    :cond_0
    return-void
.end method

.method protected onMessageShown(JI)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    iput-wide v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->messageId:J

    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(J)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-static {p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Email"

    const-string v3, "may be menuitem is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080090

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080091

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    new-instance v0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/email/activity/MessageViewFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSaveEmailTask.execute(); failed once : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0801f3

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    move v0, v1

    goto :goto_1

    :pswitch_4
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] ControlPrint Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->ControlPrint()V

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onCompose()V

    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change_bg_color Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change font size onview Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    sput v1, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "IRMRemovalFlag"

    sget v3, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-interface {v0, v2, v3}, Lcom/android/email/activity/MessageViewFragment$Callback;->removeIrmProtection(J)V

    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f1001f9 -> :sswitch_0
        0x7f1002e3 -> :sswitch_0
        0x7f1002fb -> :sswitch_0
        0x7f100307 -> :sswitch_0
        0x7f100308 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f1002fb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPostLoadBody()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "MessageViewFragment >>"

    const-string v13, "[HJP] onPrepareOptionsMenu() "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x7f1002e5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v12, 0x7f100306

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v12, 0x7f100307

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v12, 0x7f1002c8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v12, 0x7f1002e3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v12, 0x7f1002fb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v12, 0x7f100308

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x7f10030d

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v12, 0x7f10030a

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    invoke-static {v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v14, 0x402c333333333333L

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_5
    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isExportAllowed(J)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_7
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isPrintAllowed(J)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    const v12, 0x7f040043

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    const v12, 0x7f040045

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    const v12, 0x7f040041

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    const v12, 0x7f04003f

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/email/activity/MessageViewFragment;->showContent(ZZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    const v12, 0x7f100307

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v12, 0x7f1002fb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v12, 0x7f100309

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v12, 0x7f10030a

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v12, 0x7f10030b

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    const v12, 0x7f10030c

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    sget-boolean v12, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v12, :cond_0

    const v12, 0x7f100307

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v12, 0x7f1002fb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    :try_start_5
    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_a
    const/4 v12, 0x1

    :try_start_6
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    :cond_b
    const/4 v12, 0x0

    :try_start_7
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x1

    :try_start_8
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v12

    goto/16 :goto_4

    :cond_d
    const/4 v12, 0x1

    :try_start_9
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_8

    :cond_e
    const/4 v12, 0x1

    :try_start_a
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_f
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_10
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_11
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_12
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_8
.end method

.method public onReply()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    return-void
.end method

.method public onReplyAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    return-void
.end method

.method public openMessage(J)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MessageViewFragment >>"

    const-string v4, "[HJP] openMessage() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] getResources().getConfiguration().orientation= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3}, Lcom/android/email/winset/MessageScrollView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3, v6}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadMessageIfResumed()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected resetView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public selectReplyAllView()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    :cond_0
    return-void
.end method

.method public setActionBarCustomForMessageView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    return-void
.end method

.method public setMailboxId(J)V
    .locals 2

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    goto :goto_0
.end method

.method public setMoveToMailboxFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public setupReplyAllView()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f04009b

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$11;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    const-string v1, "eas"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->addTabFlags(I)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateNavigationButtonsOnView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected updateTabFlags(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0
.end method
