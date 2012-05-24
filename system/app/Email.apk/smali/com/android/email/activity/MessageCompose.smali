.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$AddAddessTask;,
        Lcom/android/email/activity/MessageCompose$ControllerResults;,
        Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;,
        Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;,
        Lcom/android/email/activity/MessageCompose$MessageComposeListener;,
        Lcom/android/email/activity/MessageCompose$AccountInfoItem;,
        Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;,
        Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;,
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

.field public static Notificationdata:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultFontSize:I

.field public static mIsSpellCheckMode:Z

.field private static mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

.field private static mStartWithIntent:Landroid/content/Intent;

.field private static mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

.field public static note:Landroid/app/Notification;

.field public static notificationManager:Landroid/app/NotificationManager;

.field private static sSaveInProgress:Z

.field private static final sSaveInProgressCondition:Ljava/lang/Object;

.field private static spellcheck_x:I

.field private static spellcheck_y:I

.field private static tLastSpellcheck:J


# instance fields
.field private DPMReceiver:Landroid/content/BroadcastReceiver;

.field private bIsDeliveryChecked:Z

.field private bIsEncryptChecked:Z

.field private bIsHtmlComposerFocused:Z

.field private bIsReadChecked:Z

.field private bIsSignChecked:Z

.field private bUserDictionaryPushedToWebkit:Z

.field private irmRemoveView:Landroid/widget/ImageView;

.field private isFirstCall:Z

.field private isSyncedDraftMessage:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCheckDialog:Landroid/app/AlertDialog;

.field private mAccountDialog:Landroid/app/AlertDialog;

.field private mAccountInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBar_Title:Landroid/widget/TextView;

.field private mActionBar_attach:Landroid/widget/LinearLayout;

.field private mActionBar_mail:Landroid/widget/LinearLayout;

.field private mAddAddressContactButtonTask:Landroid/os/AsyncTask;

.field private mAddAddressFromIntentTask:Landroid/os/AsyncTask;

.field private mAddAddressProgressDialog:Landroid/app/ProgressDialog;

.field private mAddAttachmentDialog:Landroid/app/AlertDialog;

.field private mAddAttachmentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

.field private mApp:Lcom/android/email/Email;

.field private mAttachmentCnt:I

.field private mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

.field private mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

.field private mAttachmentTotalCount:I

.field private mAttachmentTotalSize:I

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttatchment_fetched:I

.field private mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mBccContactBtn:Landroid/widget/ImageButton;

.field private mBccEditLayout:Landroid/widget/RelativeLayout;

.field private mBccEditView:Lcom/android/email/activity/AddressTextView;

.field private mBccLayout:Landroid/widget/RelativeLayout;

.field private mBccSummaryText:Landroid/widget/TextView;

.field private mBccTitleText:Landroid/widget/TextView;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mCcContactBtn:Landroid/widget/ImageButton;

.field private mCcEditLayout:Landroid/widget/RelativeLayout;

.field private mCcEditView:Lcom/android/email/activity/AddressTextView;

.field private mCcLayout:Landroid/widget/RelativeLayout;

.field private mCcSummaryText:Landroid/widget/TextView;

.field private mCcTitleText:Landroid/widget/TextView;

.field private mChangeFontSize:I

.field private mCntPressedSemicolon:I

.field private mCompose_header_layout:Landroid/widget/LinearLayout;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageCompose$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

.field private mCurrentOrientation:I

.field private mDoNotSaveDraft:Z

.field private mDownloadSmimeAttachment:Z

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mDummy_view:Landroid/widget/LinearLayout;

.field private mEditFromBubble:Z

.field private mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field private mFromLayout:Landroid/widget/LinearLayout;

.field private mFromLayoutMode:I

.field private mFromSummaryText:Landroid/widget/TextView;

.field private mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

.field private mHandler:Landroid/os/Handler;

.field private mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

.field private mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIgnoreDraftNeedsSaving:Z

.field private mInitialText:Ljava/lang/StringBuffer;

.field private mInlineImageCallbackCount:I

.field private mInlineImageCount:I

.field private mInlineImageDialog:Landroid/app/ProgressDialog;

.field private mInsertTextOrImageDialog:Landroid/app/AlertDialog;

.field private mIrmIcon:Landroid/widget/ImageView;

.field private mIrmWait:Landroid/app/ProgressDialog;

.field private mIsDeliveryChecked:Z

.field private mIsDetectedUserAction:Z

.field private mIsEncryptChecked:Z

.field private mIsExistFile:Z

.field private mIsOriginMsgEdited:Z

.field private mIsReadChecked:Z

.field private mIsSignChecked:Z

.field private mLastDeleteBtn:Landroid/widget/ImageView;

.field private mLayout_ToolBarView:Landroid/widget/LinearLayout;

.field private mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

.field private mLoadAttachmentId:J

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMessageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLocationMode:I

.field private mMessageId:J

.field private mMessageLoaded:Z

.field private mOnSend:Z

.field private mOriginalMessageId:J

.field private mOriginalMessageIdForIRM:J

.field private mPriority:I

.field private mPriorityDialog:Landroid/app/AlertDialog;

.field private mPriorityHighIcon:Landroid/widget/ImageView;

.field private mPriorityLowIcon:Landroid/widget/ImageView;

.field private mProgressDialog1:Landroid/app/ProgressDialog;

.field private mProgressSpellChecking:Landroid/app/ProgressDialog;

.field private mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mQuotedText:Landroid/webkit/HtmlComposerView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageView;

.field private mReceiptsOptionsDialog:Landroid/app/AlertDialog;

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

.field private mSaveDialog:Landroid/app/AlertDialog;

.field private mSaveEnabled:Z

.field private mScrollCount:I

.field private mScrollView:Lcom/android/email/ExtendedScrollView;

.field private mScrolledDistance:F

.field private mSecurityOptions:Z

.field private mSecurityOptionsDialog:Landroid/app/AlertDialog;

.field private mSecurityPolicyDialog:Landroid/app/AlertDialog;

.field private mSelectedQuickResponseStringType:I

.field private mSelectedResizeType:I

.field private mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

.field private mSignIcon:Landroid/widget/ImageView;

.field private mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

.field private mSmimeProgressDialog:Landroid/app/ProgressDialog;

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectTitleText:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/EditText;

.field private mTemplateDescription:Ljava/lang/String;

.field private mTemplateId:Ljava/lang/String;

.field private mTemplateName:Ljava/lang/String;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mToContactBtn:Landroid/widget/ImageButton;

.field private mToEditLayout:Landroid/widget/RelativeLayout;

.field private mToEditView:Lcom/android/email/activity/AddressTextView;

.field private mToLayout:Landroid/widget/RelativeLayout;

.field private mToSummaryText:Landroid/widget/TextView;

.field private mToTitleText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mToolBarView:Lcom/android/email/activity/ToolBarView;

.field private mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

.field private mToolbarLayout:Landroid/widget/RelativeLayout;

.field private mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

.field private mTouchEventY:F

.field public m_bIsSoftInputPadShowing:Z

.field private misspelledWordSelected:Z

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendorsave:Z

.field private showMoreHandler:Landroid/os/Handler;

.field private smimeutils:Lcom/android/email/SMIMEHelperUtils;

.field suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    sput-object v3, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    sput-object v3, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    sput-object v3, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    const/16 v0, 0x18

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDetectedUserAction:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollCount:I

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->m_bIsSoftInputPadShowing:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mChangeFontSize:I

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/email/activity/MessageCompose$21;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$21;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttatchment_fetched:I

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->sendorsave:Z

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentCnt:I

    new-instance v0, Lcom/android/email/activity/MessageCompose$25;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$25;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private AddComposeToMe()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsStringArray()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_2
    return-void
.end method

.method public static ClearComposerIntent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    return-void
.end method

.method public static GetComposerIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private IsDRMFile(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private IsEAS()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private IsSnc()Z
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollView()V

    return-void
.end method

.method static synthetic access$10002(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageCompose;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isEnabledGPS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10300(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    return v0
.end method

.method static synthetic access$10400(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->startAttachmentActivity(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return v0
.end method

.method static synthetic access$10702(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return v0
.end method

.method static synthetic access$11202(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11402(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return v0
.end method

.method static synthetic access$11802(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return p1
.end method

.method static synthetic access$11900(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return v0
.end method

.method static synthetic access$11902(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/android/email/activity/MessageCompose;Lcom/android/email/SMIMEHelperUtils;)Lcom/android/email/SMIMEHelperUtils;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/email/activity/MessageCompose;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide v0
.end method

.method static synthetic access$12402(Lcom/android/email/activity/MessageCompose;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide p1
.end method

.method static synthetic access$12502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$12602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    return v0
.end method

.method static synthetic access$12800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->doSpellCheck()V

    return-void
.end method

.method static synthetic access$12902(J)J
    .locals 0

    sput-wide p0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13000()Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/android/email/activity/utils/spellcheck/UserDictionary;)Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$13102(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/email/activity/MessageCompose;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->focusOutRecipient()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return p1
.end method

.method static synthetic access$3208(Lcom/android/email/activity/MessageCompose;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageCompose;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAddressFromGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageCompose;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->hasInlineDataImage(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return p1
.end method

.method static synthetic access$5008(Lcom/android/email/activity/MessageCompose;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return p1
.end method

.method static synthetic access$5108(Lcom/android/email/activity/MessageCompose;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAccountSetup()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    return-void
.end method

.method static synthetic access$6702(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageCompose;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide v0
.end method

.method static synthetic access$6802(Lcom/android/email/activity/MessageCompose;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide p1
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptions:Z

    return v0
.end method

.method static synthetic access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .locals 1

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->send()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageCompose;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return v0
.end method

.method static synthetic access$8202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return p1
.end method

.method static synthetic access$8300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->IsDRMFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageCompose;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getComposerActivityContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    return-void
.end method

.method static synthetic access$9802(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    return p1
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 2

    :try_start_0
    const-string v0, "Email"

    const-string v1, "[Email_log] actionCompose IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z
    .locals 1

    const/high16 v0, 0x2400

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "account_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2

    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static actionEmailDoc(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static actionMeetingResponse(Landroid/content/Context;JI)V
    .locals 1

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    return-void
.end method

.method public static actionProposeNewTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1

    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private addAddressFromGroup(Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v6, v7

    :goto_1
    array-length v0, v9

    if-ge v6, v0, :cond_4

    aget-object v0, v9, v6

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "primary_emails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "data1"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0805d7

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto/16 :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v7

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v2}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, ""

    invoke-virtual {v8, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAllAddressFromEditText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    :cond_2
    return-void
.end method

.method private addAttachment(Landroid/net/Uri;)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/email/activity/MessageCompose$46;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$46;-><init>(Lcom/android/email/activity/MessageCompose;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$46;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    return v2
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .locals 16

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->IsDRMFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_1
    const-string v1, "application/vnd.oma.drm.content"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Compose >>"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v7

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    int-to-long v3, v7

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v1, v7, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const/16 v1, 0x10

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040071

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f1000dd

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000dc

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f100187

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_1
    if-nez p2, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    if-eqz v3, :cond_9

    :cond_9
    const v3, 0x7f100186

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/MessageCompose;->getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v3, "Compose >>"

    const-string v4, "In case of attaching vcf: start"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_16

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const-string v4, ".vcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v4, "com.android.contacts/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    :cond_a
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_f

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string v10, "Compose >>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case 1: fileUri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v3, 0xff

    new-array v3, v3, [B

    :goto_2
    const/4 v12, -0x1

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-eq v12, v13, :cond_d

    int-to-long v12, v13

    add-long/2addr v5, v12

    goto :goto_2

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v3, v5, v12

    if-lez v3, :cond_e

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-string v3, "Compose >>"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total Elapsed time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v10, v12, v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_1b

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v3, v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v3, v7, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_19

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_1a

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_18

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    :cond_f
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "Compose >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case 2: fileUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_5
    const-string v3, "Compose >>"

    const-string v4, "In case of attaching vcf: end"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/MessageCompose;->mLastDeleteBtn:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    if-eqz p4, :cond_17

    :try_start_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1f

    const/16 v10, 0x27

    const/16 v9, 0x27

    if-eqz v3, :cond_1e

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    :goto_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v10, v2, :cond_1d

    :goto_7
    if-le v9, v1, :cond_1c

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_14

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :catch_3
    move-exception v1

    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment(),File not found \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    goto/16 :goto_9

    :catch_4
    move-exception v1

    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Thumnail Out of Memory \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_9

    :catch_5
    move-exception v1

    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Illegal Argument \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_17
    move-object/from16 v1, p3

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1c
    move v1, v9

    goto/16 :goto_8

    :cond_1d
    move v2, v10

    goto/16 :goto_7

    :cond_1e
    move-object v3, v1

    goto/16 :goto_6

    :cond_1f
    move-object v1, v2

    goto/16 :goto_9
.end method

.method private addBccAddressFromEditText(Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private addCcAddressFromEditText(Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private addToAddressFromEditText(Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private applyIRMresctrition(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_0
    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_2

    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_3

    move v3, v0

    :goto_0
    and-int/lit8 v2, v4, 0x20

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    const-string v0, "Compose >>"

    const-string v1, "Editing Recipients is disabled by IRM"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->disableEditing()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setFocusable(Z)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setDisableCopyNCut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, "Compose >>"

    const-string v1, "Caught Exception: applyIRMresctrition"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private arrangeAttachments()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v7, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100189

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08030b

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802e1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private arrangeScrollView()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrolledDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getScrollY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mCompose_header_layout.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    new-array v1, v6, [I

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    new-array v2, v6, [I

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_1

    const-string v1, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v4}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  <  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  -  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  - 4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v3}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int v4, v0, v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v3, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    aget v1, v2, v5

    neg-int v1, v1

    invoke-virtual {v0, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private arrangeScrollViewForHeaderChange()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/ExtendedScrollView;->measure(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/ExtendedScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0}, Lcom/android/email/ExtendedScrollView;->invalidate()V

    return-void
.end method

.method private changeSmimeOptions(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    return-void
.end method

.method private checkAttachment()V
    .locals 7

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v4, v3, :cond_0

    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "emailAddress"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    :cond_3
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    :cond_5
    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    :cond_6
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_0

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_9

    const v0, 0x7f0804e7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_0

    const v0, 0x7f0804e5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private static convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .locals 5

    array-length v3, p0

    new-array v2, v3, [Ljavax/mail/Address;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    :try_start_0
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method private createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v5

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    move v3, v7

    :goto_0
    if-eqz v3, :cond_2

    move-object v6, p2

    :goto_1
    if-eqz v6, :cond_5

    if-eqz v3, :cond_3

    :goto_2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v7, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    move-object v6, p1

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v8, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v7, v6, v8}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    :cond_5
    return-void
.end method

.method private doSpellCheck()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheckAddWord(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    return-void
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/high16 v0, 0x42b4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/high16 v0, 0x4334

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/high16 v0, 0x4387

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private focusBccLayout(Z)V
    .locals 5

    const v4, 0x7f0801bf

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private focusCcLayout(Z)V
    .locals 5

    const v4, 0x7f0801bf

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private focusOutRecipient()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    :cond_1
    return-void
.end method

.method private focusToLayout(Z)V
    .locals 4

    const v3, 0x7f0801bf

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3, v2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 5

    const-wide/16 v3, -0x1

    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    goto :goto_0
.end method

.method private getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const-string v5, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    const v0, 0x7f080555

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    :goto_4
    if-eqz v1, :cond_13

    if-nez v4, :cond_13

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    :try_start_3
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    :cond_8
    :goto_6
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_11

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_a
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    :goto_8
    if-nez v4, :cond_12

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v0, v5, :cond_e

    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    :cond_e
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_f
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    if-eqz v1, :cond_10

    :try_start_5
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    :cond_10
    :goto_a
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0

    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto/16 :goto_2

    :cond_12
    move-object v1, v4

    goto/16 :goto_9

    :cond_13
    move-object v1, v4

    goto/16 :goto_5
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getComposerActivityContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private getFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath: path= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is file"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath file path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v3, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is content"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v0, "Email"

    const-string v1, "Query on returns null result."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "Email"

    const-string v1, "Query on returns 0 or multiple rows."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v9, v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    const-string v0, "Email"

    const-string v1, "getFilePath URI path is not normal scheme"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Email"

    const-string v1, "getFilePath: Uri is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returns 0 or multiple rows."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath URI path is not file scheme - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getMaxAttachmentUploadSize()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getSettingsManager()Lcom/seven/Z7/common/settings/Z7SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v1, v1

    const-string v2, "hidden_pref_max_attachment_size"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/seven/Z7/common/settings/Z7SettingsManager;->getStringPreference(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    goto :goto_0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private getOrCreateDraftId()J
    .locals 8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3

    :goto_0
    return-wide v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1

    const-wide/16 v1, -0x1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v5, v0

    if-lez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v1, v5}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 7

    const v1, 0x7f020213

    const v2, 0x7f02020e

    const v0, 0x7f02020a

    const v3, 0x7f0201ff

    const/4 v6, 0x1

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    const v0, 0x7f0201fb

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    const v0, 0x7f02020d

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3ga"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_5

    const v0, 0x7f0201f7

    goto :goto_0

    :cond_5
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_6

    const v0, 0x7f02020c

    goto :goto_0

    :cond_6
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".avi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_7

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_7

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wmv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_8

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".hwp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_9

    const v0, 0x7f020209

    goto/16 :goto_0

    :cond_9
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_a

    const v0, 0x7f02020f

    goto/16 :goto_0

    :cond_a
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".doc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_b

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".docx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_c

    :cond_b
    const v0, 0x7f0201fc

    goto/16 :goto_0

    :cond_c
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gul"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_d

    const v0, 0x7f02020b

    goto/16 :goto_0

    :cond_d
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_e

    const v0, 0x7f0201fa

    goto/16 :goto_0

    :cond_e
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_f

    const v0, 0x7f020212

    goto/16 :goto_0

    :cond_f
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".rtf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_10

    const v0, 0x7f020211

    goto/16 :goto_0

    :cond_10
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_11

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_12

    :cond_11
    const v0, 0x7f020208

    goto/16 :goto_0

    :cond_12
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_13

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xlsx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_14

    :cond_13
    const v0, 0x7f020214

    goto/16 :goto_0

    :cond_14
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".ppt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_15

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pptx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_16

    :cond_15
    const v0, 0x7f020210

    goto/16 :goto_0

    :cond_16
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_19

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto/16 :goto_0

    :cond_18
    move v0, v3

    goto/16 :goto_0

    :cond_19
    move v0, v3

    goto/16 :goto_0
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11

    const/4 v8, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    :cond_0
    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    float-to-int v8, v0

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "importance"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "smimeFlags"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IRMTemplateId"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMTemplateName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IRMTemplateDescription"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "snippet"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleCommand(I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->AddComposeToMe()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto/16 :goto_1

    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto/16 :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowPriorityDialog()V

    goto/16 :goto_1

    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V

    goto/16 :goto_1

    :sswitch_b
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V

    goto/16 :goto_1

    :cond_4
    const v2, 0x7f080598

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onIRMOperation()Z

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_7
        0x7f100184 -> :sswitch_1
        0x7f100185 -> :sswitch_0
        0x7f1001ae -> :sswitch_8
        0x7f1002d6 -> :sswitch_2
        0x7f1002d7 -> :sswitch_3
        0x7f1002d8 -> :sswitch_4
        0x7f1002d9 -> :sswitch_5
        0x7f1002da -> :sswitch_6
        0x7f1002db -> :sswitch_9
        0x7f1002dc -> :sswitch_a
        0x7f1002dd -> :sswitch_b
        0x7f1002de -> :sswitch_c
    .end sparse-switch
.end method

.method private hasInlineDataImage(JI)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    goto :goto_0
.end method

.method private imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 10

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v9

    int-to-float v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x5a

    if-eq v9, v1, :cond_4

    const/16 v1, 0x10e

    if-ne v9, v1, :cond_6

    :cond_4
    const/4 v1, 0x1

    invoke-static {v0, p3, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    const-string v1, "Email"

    const-string v2, "onSelectedResizeType() resize done!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_10

    :try_start_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_resized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_5
    move-object v3, v2

    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_resized_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v3, v2

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_7

    const/4 v0, 0x2

    :try_start_3
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    move-object v4, v0

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x2

    if-ne p4, v1, :cond_8

    const/4 v0, 0x4

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_8
    const/4 v1, 0x3

    if-ne p4, v1, :cond_9

    const/16 v0, 0x8

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_c
    :goto_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    const-string v0, "Email"

    const-string v3, "onSelectedResizeType() restore done!"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_e

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v0, v2

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    move-object v0, v2

    goto :goto_6

    :cond_f
    const-string v0, "Email"

    const-string v1, "onSelectedResizeType() file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    move-object v0, v7

    goto :goto_6
.end method

.method private includeQuotedText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 11

    const/4 v3, -0x1

    const/high16 v10, 0x200

    const/16 v2, 0xff

    const/16 v9, 0x8

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f1001ab

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    :cond_0
    const v0, 0x7f1001a9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setNextFocusDownId(I)V

    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    const v0, 0x7f100192

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f100195

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/ExtendedScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/ExtendedScrollView;->setOnChangeKeyboardStatusListener(Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f100197

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setDefaultFontSizeBySettings()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget v1, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget v1, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    const v0, 0x7f10017f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    const v0, 0x7f100180

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/ToolBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v0, 0x7f100182

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v1, 0x244

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/LinearLayout;

    const v0, 0x7f100184

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-instance v1, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-instance v2, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-instance v3, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-instance v4, Lcom/android/email/activity/MessageCompose$17;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$17;-><init>(Lcom/android/email/activity/MessageCompose;)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xbb8

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v8, v8}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$18;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$19;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$19;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$20;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$20;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v1, 0x118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while decoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private insertImage(Landroid/net/Uri;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "Compose >>"

    const-string v1, "insertImage Uri is not either file or content scheme!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: file, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    :goto_1
    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v6, v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eq v6, v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "return 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: content, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_1

    :cond_6
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage Uri is not either file or content scheme!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v3, 0x168

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_9

    mul-int v1, v0, v3

    div-int/2addr v1, v2

    :cond_9
    if-le v3, v2, :cond_d

    move v1, v2

    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_b

    if-lez v1, :cond_a

    if-lez v0, :cond_a

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_1

    if-lez v1, :cond_c

    if-lez v0, :cond_c

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_e
    move-object v4, v2

    goto/16 :goto_1
.end method

.method private isEnabledGPS()Z
    .locals 2

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotFieldsAllEmpty()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "O2U"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    if-nez v3, :cond_b

    :goto_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-string v3, "PRT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const-string v3, "CEL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "PTR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v3, v2

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v2, v3

    goto/16 :goto_3
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v4}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-wide v6, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v1, 0xff

    new-array v1, v1, [B

    move-wide v4, v6

    :goto_2
    const/4 v6, -0x1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eq v6, v7, :cond_3

    int-to-long v6, v7

    add-long/2addr v4, v6

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v1, "YohanTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total Elapsed time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long/2addr v6, v11

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v2

    move-wide v6, v4

    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-wide v4, v8

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v3, v2

    move-wide v6, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_6
    move-object v3, v2

    move-wide v6, v8

    goto :goto_3

    :cond_7
    move-object v0, v3

    move-wide v1, v6

    goto/16 :goto_0
.end method

.method private onAccountSetup()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    return-void
.end method

.method private onAddAttachmentFromMyfiles()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivityList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file_display"

    const-string v2, "forwardable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onAddTextActivity(I)V
    .locals 8

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "intent.action.INTERACTION_LIST"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "additional"

    const-string v7, "namecard"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x7d2

    invoke-virtual {p0, v4, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "text/plain"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x7d3

    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.memo"

    const-string v7, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "text/memo_string"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x7d4

    invoke-virtual {p0, v3, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "app_name"

    const-string v7, "email"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x7d6

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    const/16 v6, 0x7d5

    iput v6, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto :goto_0

    :pswitch_6
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertImage()V

    goto/16 :goto_0

    :pswitch_7
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertDrawingPad()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 6

    const v5, 0x7f0805b6

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    if-nez v0, :cond_0

    const v0, 0x7f0800bc

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.quickoffice.mx.samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.email.attachmentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0802e5

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private onAttachmentDrawingPad()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3f5

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onCancel()V
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onDeleteMessageConfirmationDialogOkPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0801cb

    new-instance v2, Lcom/android/email/activity/MessageCompose$22;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$22;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0801cc

    new-instance v2, Lcom/android/email/activity/MessageCompose$23;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$23;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->getResultCallbacksForTest()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_4

    const-wide/16 v4, -0x2

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_0
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    :cond_0
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_2
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/email/activity/MessageCompose$28;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$28;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v2, v6, [Ljava/lang/Long;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$28;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    return-void
.end method

.method private onDiscard()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onImageAttachmentResult(Ljava/lang/String;II)V
    .locals 12

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v3, v0, 0x4

    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v4, v0, 0x4

    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, p3, 0x2

    div-int/lit8 v7, p2, 0x4

    div-int/lit8 v8, p3, 0x4

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f08048d

    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f08048e

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (70%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f08048f

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (30%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f080490

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (10%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "2131231889 ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    long-to-float v0, v0

    invoke-static {v11, v0}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/email/activity/MessageCompose$49;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$49;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f080042

    new-instance v0, Lcom/android/email/activity/MessageCompose$50;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessageCompose$50;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MessageCompose$51;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$51;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onInsertDrawingPad()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x7d7

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onInsertImage()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onLoadMoreMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    :cond_0
    return-void
.end method

.method private onPhonebook()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "existingRecipientCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "maxRecipientCount"

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Email"

    const-string v3, "onPhonebook: AcitivityNotFoundException!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRefreshLayoutCcBcc()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_1
    if-ne v0, v3, :cond_2

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private onSave()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    return-void
.end method

.method private onSend()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0800b4

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f080556

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_6

    const v0, 0x7f0804e7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_7

    const v0, 0x7f0804e5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f0803cf

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v3, v4, p0, v5}, Lcom/android/email/util/EmailAddressCacheProcessor;->insertAllContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_0
.end method

.method private onShowAccountCheckDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0805bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowAccountDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Lcom/android/email/activity/MessageCompose$29;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$29;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowAddAttachmentDialog()V
    .locals 10

    const v9, 0x7f0802e2

    const v4, 0x7f0801ab

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/email/activity/AddAttachmentSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "0"

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    new-instance v0, Lcom/android/email/activity/MessageCompose$37;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$37;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddAttachmentSelectorAdapter;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private onShowInsertTextOrImageDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080204

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/email/activity/MessageCompose$42;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MessageCompose$42;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddTextSelectorAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowPriorityDialog()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v3, Lcom/android/email/activity/MessageCompose$38;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$38;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onShowReceiptsOptionsDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    aput-boolean v3, v1, v2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0805aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/email/activity/MessageCompose$43;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$43;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$44;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$44;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$45;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$45;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowSecurityOptionsDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    aput-boolean v3, v1, v2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0804db

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/email/activity/MessageCompose$39;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$39;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$40;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$40;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$41;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$41;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowSecurityPolicyDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onSpellCheckAddWord(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0805bf

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpellCheckAddWord() word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    const/high16 v1, 0x7f07

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    :cond_3
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/CharSequence;

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_2
    new-instance v1, Lcom/android/email/activity/MessageCompose$52;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$52;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f08021e

    new-instance v1, Lcom/android/email/activity/MessageCompose$53;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$53;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0805c1

    new-instance v1, Lcom/android/email/activity/MessageCompose$54;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageCompose$54;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2
.end method

.method private onViewAttachment(Landroid/view/View;)V
    .locals 5

    const-string v0, "Compose >>"

    const-string v1, "onViewAttachment"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAttachment() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 4

    const-string v1, "<IMG+.*?>"

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "SRC=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/bubblelayout/BubbleLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    if-eqz v0, :cond_2

    const-string v0, "Compose >>"

    const-string v1, " ///////////////return   saveIfNeeded()   mDoNotSaveDraft = true "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-void
.end method

.method private send()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compose draft saving mOnSend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    return-void
.end method

.method private sendOrSaveMessage(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, -0x1

    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0
.end method

.method private setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkAttachment()V

    return-void
.end method

.method private setDefaultFontSizeBySettings()I
    .locals 4

    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultFontSizeBySettings: mValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x41

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setDraftNeedsSaving(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mSaveEnabled:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private setFromAccount()V
    .locals 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v5, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v0, "displayName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "emailAddress"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "hostAuthKeyRecv"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v0, "typeMsg"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;-><init>(Lcom/android/email/activity/MessageCompose;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setFromLayoutMode(I)V
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIncludeQuotedText(ZZ)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNewMessageFocus()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 1

    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    return-void
.end method

.method private showResultToast(I)V
    .locals 2

    const/4 v1, 0x1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    const v0, 0x7f0800b9

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const v0, 0x7f0800b8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    const v0, 0x7f080206

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    const v0, 0x7f0805b5

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const v0, 0x7f080209

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0
.end method

.method public static showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6

    const/4 v5, 0x4

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202aa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    sget-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    const-string v1, "Sending..."

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_Start() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showSoftKeyboard(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method

.method private showToasts(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private shrinkAttachmentLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto :goto_0
.end method

.method private shrinkAttachmentLayout(Z)V
    .locals 6

    const v5, 0x7f10018a

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    if-eqz p1, :cond_0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private shrinkCcBccLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_1
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 2

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "meeting_resonse"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startAttachmentActivity(I)V
    .locals 5

    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAttachmentActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: startAttachmentActivity()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app_name"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Sounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FOLDERPATH"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "email"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3f0

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAttachmentDrawingPad()V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "eas"

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    :cond_3
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    :cond_4
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    :cond_6
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_8

    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    :cond_8
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_9
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_18

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    if-eqz v1, :cond_c

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_c
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    if-eqz v1, :cond_d

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_d
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_1f

    :cond_e
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v1, :cond_10

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_10
    if-eqz v0, :cond_1b

    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    :cond_13
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    const v4, 0x7f0800b0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    aput-object v2, v5, v6

    const/4 v2, 0x2

    if-eqz v0, :cond_1c

    :goto_3
    aput-object v0, v5, v2

    const/4 v2, 0x3

    if-eqz v1, :cond_1d

    move-object v0, v1

    :goto_4
    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    :cond_15
    :goto_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    :cond_16
    :goto_7
    return-void

    :cond_17
    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->plainText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_1a

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_1

    :cond_1a
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_2

    :cond_1c
    const-string v0, ""

    goto/16 :goto_3

    :cond_1d
    const-string v0, ""

    goto/16 :goto_4

    :cond_1e
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    const v0, 0x7f0800b1

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1f
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_15

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_20
    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_6

    :cond_21
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    if-eqz p4, :cond_16

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_7
.end method

.method private updateSignEncryptIcons()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public IsOriginMsgEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public SetOriginMsgEdited(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public UpdateRichToolbar(I)V
    .locals 6

    const v5, 0x3f19999a

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-nez p1, :cond_1

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    goto :goto_0
.end method

.method public attachmentProgress(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8f

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayToast(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x91

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishLoadAttachment(J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x90

    iput v1, v0, Landroid/os/Message;->what:I

    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishLoadInlineAttachment()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x93

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishLoadMore()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x95

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method getIsSyncedDraftMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    array-length v5, v3

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    const v6, 0x7f0801bf

    invoke-direct {p0, v6, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    :cond_2
    :goto_2
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    :cond_3
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    :cond_4
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_7
    const-string v0, "android.intent.action.SEND"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    const-string v4, "text/x-vcard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vcard"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    :cond_8
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    const-string v0, "Compose >>"

    const-string v1, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/android/email/activity/MessageCompose$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$34;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$34;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    :cond_9
    :goto_5
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/android/email/activity/MessageCompose$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$35;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$35;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    move-object v0, v1

    goto/16 :goto_4

    :cond_e
    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_5
.end method

.method isAddressAllValid()Z
    .locals 4

    const v3, 0x7f0800c5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0
.end method

.method isExpiredSpellCheckMode()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public messageChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x97

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v7, 0x32

    const/4 v2, -0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v2, :cond_2

    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v4

    or-int/2addr v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto :goto_1

    :sswitch_2
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_IMAGE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_ATTACHMENT_IMAGE file path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v7, :cond_8

    if-le v3, v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    :cond_7
    invoke-direct {p0, v0, v4, v3}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_8
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_3

    :cond_9
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_PICTURE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_d

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v7, :cond_c

    if-le v3, v7, :cond_c

    invoke-direct {p0, v0, v4, v3}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_4

    :cond_d
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Email"

    const-string v3, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_AUDIO"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_AUDIO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_10

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_1

    :cond_10
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x3ef

    if-ne v0, p1, :cond_14

    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_14
    const/16 v0, 0x3f0

    if-ne v0, p1, :cond_13

    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_VIDEO or TAKE_VIDEO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    :cond_16
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v0, "Compose >>"

    const-string v2, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/email/activity/MessageCompose$24;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$24;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$24;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_17

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_17
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_PEN_MEMO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_18

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_18
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_PEN_MEMO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const/16 v4, 0x168

    if-eqz v6, :cond_4e

    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_19

    mul-int v2, v0, v4

    div-int/2addr v2, v3

    :cond_19
    if-le v4, v3, :cond_4e

    move v2, v0

    move v0, v3

    :goto_8
    if-eqz v7, :cond_1a

    invoke-direct {p0, v5, v0, v2}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :cond_1a
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_DRAWING_PAD file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const/16 v4, 0x168

    if-eqz v5, :cond_4d

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_4c

    mul-int v1, v0, v4

    div-int/2addr v1, v3

    :goto_9
    if-le v4, v3, :cond_4b

    move v1, v3

    :goto_a
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v2, v8, :cond_1b

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v3, ""

    sget-object v4, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    :cond_1b
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v2

    if-ne v8, v2, :cond_1d

    if-lez v1, :cond_1c

    if-lez v0, :cond_1c

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    if-lez v1, :cond_1e

    if-lez v0, :cond_1e

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const/16 v3, 0x168

    if-eqz v4, :cond_4a

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_1f

    mul-int v2, v0, v3

    div-int/2addr v2, v1

    :cond_1f
    if-le v3, v1, :cond_4a

    move v2, v0

    move v0, v1

    :goto_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_21

    if-lez v0, :cond_20

    if-lez v2, :cond_20

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    if-lez v0, :cond_22

    if-lez v2, :cond_22

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_23

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    :cond_23
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_25

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_25
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_26

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_26
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_27

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_27
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_28

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_29

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :cond_29
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "Compose >>"

    const-string v1, "REQUEST_INSERT_PEN_MEMO"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "location-string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f0802f0

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_1

    :cond_2b
    const-string v0, "location-fileUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Email"

    const-string v3, "REQUEST_ATTACHMENT_LOCATION = "

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_2c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_2c
    if-eqz v0, :cond_2d

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "location-string"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "location-fileUri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_INSERT_LOCATION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const v0, 0x7f0802f0

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_1

    :cond_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {v1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    :cond_2f
    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_35

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_30
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_31

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    :cond_31
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2f

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_33

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    :cond_33
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_34

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    :cond_34
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2f

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_c

    :cond_35
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_36

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_36
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_37
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    :cond_38
    :goto_e
    const v0, 0x7f0801bf

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_d

    :cond_39
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_e

    :cond_3a
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_e

    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_42

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    :cond_3c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    :cond_3d
    :goto_f
    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/util/ArrayList;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_f

    :cond_40
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3d

    :cond_41
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_f

    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    :cond_43
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_44
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_46

    :cond_45
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_46
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_47
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :sswitch_15
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    :cond_48
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    :cond_49
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    :cond_4a
    move v0, v3

    goto/16 :goto_b

    :cond_4b
    move v0, v1

    move v1, v4

    goto/16 :goto_a

    :cond_4c
    move v1, v2

    goto/16 :goto_9

    :cond_4d
    move v0, v2

    move v1, v4

    goto/16 :goto_a

    :cond_4e
    move v0, v4

    goto/16 :goto_8

    :cond_4f
    move v0, v1

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_8
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_12
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_9
        0x3f5 -> :sswitch_a
        0x3f6 -> :sswitch_8
        0x7d1 -> :sswitch_d
        0x7d2 -> :sswitch_e
        0x7d3 -> :sswitch_f
        0x7d4 -> :sswitch_10
        0x7d5 -> :sswitch_13
        0x7d6 -> :sswitch_11
        0x7d7 -> :sswitch_b
        0xbb9 -> :sswitch_c
        0xfa1 -> :sswitch_14
        0x1389 -> :sswitch_0
        0x7011214 -> :sswitch_15
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onViewAttachment(Landroid/view/View;)V

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountDialog()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f1000dd -> :sswitch_0
        0x7f100175 -> :sswitch_1
        0x7f10017d -> :sswitch_b
        0x7f100184 -> :sswitch_3
        0x7f100185 -> :sswitch_2
        0x7f100186 -> :sswitch_0
        0x7f100187 -> :sswitch_4
        0x7f10018a -> :sswitch_1
        0x7f10018d -> :sswitch_8
        0x7f10018f -> :sswitch_8
        0x7f100192 -> :sswitch_a
        0x7f100195 -> :sswitch_7
        0x7f100197 -> :sswitch_7
        0x7f100199 -> :sswitch_a
        0x7f10019d -> :sswitch_5
        0x7f10019e -> :sswitch_9
        0x7f1001a8 -> :sswitch_6
        0x7f1001aa -> :sswitch_6
        0x7f1001ac -> :sswitch_a
    .end sparse-switch
.end method

.method public onComposerAttach()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAddAttachmentDialog()V

    return-void
.end method

.method public onComposerInsert()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowInsertTextOrImageDialog()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v3, 0x244

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v3, 0x118

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object v8, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    sput-boolean v10, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f050003

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->overridePendingTransition(II)V

    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountCheckDialog()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz p1, :cond_1e

    const-string v0, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    const-string v0, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    const-string v2, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    :cond_4
    new-instance v2, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    invoke-direct {v2, p0, v8}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mProgressDialog1:Landroid/app/ProgressDialog;

    cmp-long v2, v0, v6

    if-eqz v2, :cond_5

    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_5
    const-string v2, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SENDTO"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v9}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v8, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    :goto_4
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1a

    move v1, v9

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1b

    move v0, v9

    :goto_6
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_a
    :goto_7
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageCompose$MessageComposeListener;

    invoke-direct {v2, p0, v8}, Lcom/android/email/activity/MessageCompose$MessageComposeListener;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f0803cf

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    :cond_c
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "message_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    :cond_e
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    goto/16 :goto_0

    :cond_f
    move-object v0, v8

    goto/16 :goto_3

    :cond_10
    cmp-long v2, v0, v6

    if-eqz v2, :cond_15

    move-wide v1, v0

    :goto_8
    cmp-long v0, v1, v6

    if-eqz v0, :cond_18

    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    const-string v0, "account_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-gez v0, :cond_17

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-string v4, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_16

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    move v0, v9

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/email/activity/MessageCompose$ControllerResults;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$ControllerResults;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-direct {v0, v4, v5}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    :cond_12
    :goto_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    :cond_13
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    iput-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_14

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, v8, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const-string v0, "message_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v1, v0

    goto/16 :goto_8

    :cond_16
    move v0, v10

    goto :goto_9

    :cond_17
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    goto :goto_a

    :cond_18
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_b

    :cond_19
    move-object v0, v8

    goto :goto_c

    :cond_1a
    move v1, v10

    goto/16 :goto_5

    :cond_1b
    move v0, v10

    goto/16 :goto_6

    :cond_1c
    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_7

    :cond_1d
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto/16 :goto_1

    :cond_1e
    move-wide v0, v6

    goto/16 :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0802e6

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0802e7

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/email/activity/MessageCompose$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$30;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0802ea

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$31;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0802eb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$32;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/email/activity/MessageCompose$33;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$33;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    return v2
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-array v0, v5, [J

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v1, v0, v4

    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    const v0, 0x7f0800c2

    invoke-static {p0, v0, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->loadMoreCancel()V

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    goto :goto_0

    :sswitch_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10017a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f10017a -> :sswitch_0
        0x7f10017c -> :sswitch_1
        0x7f10018f -> :sswitch_4
        0x7f100197 -> :sswitch_3
        0x7f1001a2 -> :sswitch_5
        0x7f1001aa -> :sswitch_2
    .end sparse-switch
.end method

.method public onIRMOperation()Z
    .locals 8

    const v7, 0x7f08059e

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x7f080599

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_6

    const-string v0, "eas"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/email/Controller;->refreshIRMTemplates(J)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    const v2, 0x7f0805a3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v3

    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    :sswitch_4
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    :sswitch_5
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100193 -> :sswitch_2
        0x7f10019a -> :sswitch_1
        0x7f1001ad -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f100193 -> :sswitch_3
        0x7f10019a -> :sswitch_5
        0x7f1001ad -> :sswitch_4
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10017d
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const v0, 0x7f050003

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->overridePendingTransition(II)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const v4, 0x7f1002d7

    const v3, 0x7f1002d6

    const v7, 0x7f1002de

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_5

    const v0, 0x7f1002d9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    const v0, 0x7f1002da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f1002dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_8

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    :goto_6
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1002dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move v2, v1

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f1002d9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6

    :cond_a
    const v0, 0x7f1002dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSpellCheck()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Compose >>"

    const-string v1, "onSpellCheck() call setIsContinousSpellCheck() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->checkReloadDictionary()V

    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->getWordList()Ljava/util/ArrayList;

    :cond_1
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_y:I

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10017a -> :sswitch_0
        0x7f10017c -> :sswitch_1
        0x7f1001a2 -> :sswitch_2
    .end sparse-switch
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 15

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    move-object v7, v1

    :goto_0
    const v1, 0x7f08053e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f08053b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v1, 0x7f08053c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f08053d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f08053a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v8, v1

    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$36;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$36;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_f

    :cond_2
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v1, :cond_f

    const v1, 0x7f0804d9

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    return-void

    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v7, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x2

    move v8, v1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting_resonse"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080165

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080167

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080166

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08053f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    const/4 v2, 0x0

    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    :cond_11
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const/4 v1, 0x0

    goto :goto_6

    :cond_13
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_14
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x2

    if-eq v8, v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_15
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    :cond_16
    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_18
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_1b
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1c

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    :cond_1c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    :cond_1d
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_2

    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v3, :cond_22

    if-eqz v4, :cond_20

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v3

    :goto_b
    if-ge v2, v5, :cond_1f

    aget-object v3, v4, v2

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v6, :cond_1e

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v6, v7, :cond_1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_1f
    move-object v3, v1

    :cond_20
    :goto_c
    if-eqz v3, :cond_21

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, "email://"

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto/16 :goto_4

    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v3, :cond_20

    invoke-static {v3}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    :cond_0
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public progressLoadMore(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x96

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v2, v1, :cond_4

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<div><br></div><div><br></div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<div style=\"font-size:100%\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-void
.end method

.method setIsSyncedDraftMessage(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V
    .locals 8

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    :cond_0
    invoke-direct {p0, p3, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    if-eqz p5, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object v2, v6

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p3, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p4, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    :cond_2
    return-void
.end method

.method public startLoadMore()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x94

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected updateActionBarBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
