.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$ItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;,
        Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;,
        Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    }
.end annotation


# static fields
.field private static EMPTY_TEXT_CONTENT:Ljava/lang/String;

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field public static INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static PREVIEW_ICON_HEIGHT:I

.field private static PREVIEW_ICON_WIDTH:I

.field public static SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static final ZOOM_SCALE_ARRAY:[F

.field private static isMessageList:Z

.field private static mAttachmentCnt:I

.field private static mAttachmentCnt_saved:I

.field private static mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

.field public static mIsAttachAll:Z

.field public static mIsLaunchAttach:Z

.field private static mIsSms:Z

.field public static mLoadAttachmentId:J

.field public static mLoadMoreDialogCancelled:Z

.field public static mPMmanager:Lcom/android/email/ViewPatternMatching;

.field public static mProgressDialogShowing:Z

.field private static mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

.field private static mViewMaxWidth:I

.field private static message:Ljava/lang/String;

.field private static progress_pre:I

.field public static progress_rotated:Z

.field private static sAttachmentListOpen:Z

.field private static sRecipientOpen:Z

.field private static sSplitMoved:Z

.field public static smimeutils:Lcom/android/email/SMIMEHelperUtils;


# instance fields
.field public BgColorDialog:Landroid/app/AlertDialog;

.field public FromRetainedObject:Z

.field private final MaxListCountInToCc:I

.field public PREFERENCES_FILE:Ljava/lang/String;

.field private bSaveToCalendarIsText:Z

.field private dialogCancelled:Z

.field private downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

.field private downloadManager:Landroid/app/DownloadManager;

.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mAllDownloadIcon:Landroid/widget/Button;

.field private mAlldownloadIconVisible:Z

.field private mAlreadySaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentCount:I

.field private mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private mAttachmentTab:Landroid/widget/TextView;

.field private mAttachments:Landroid/widget/LinearLayout;

.field public mAttachmentsExpander:Landroid/widget/ImageButton;

.field private mAttachmentsHeaderInfo:Landroid/widget/TextView;

.field private mAttatchmentCount:I

.field private mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

.field private mBGColorCode:[I

.field private mBaseURL:Ljava/lang/String;

.field public mBgColor:I

.field private mBodyHtml:Ljava/lang/String;

.field private mBodyImageAttachmentId:[J

.field private mBodyImageCnt:I

.field private mBodyImageDownloadCnt:I

.field private mBodyText:Ljava/lang/String;

.field public mBtnMoreInformation:Landroid/widget/ImageButton;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mCcEmail:Ljava/lang/String;

.field private mCcMargin:Landroid/view/View;

.field private mCcText:Landroid/widget/TextView;

.field private mCclength:I

.field private mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

.field private mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

.field private mColor:[Ljava/lang/String;

.field private mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mCurColorCode:I

.field private mCurXPos:I

.field private mCurYPos:I

.field private mCurrentOrientation:I

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

.field private mDownloadSmimeAttachment:Z

.field private mDownloadZ7AttForSave:Z

.field public mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field private mExpanderButton:Landroid/widget/ImageButton;

.field public mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFontColorCode:[I

.field private mFontColorString:[Ljava/lang/String;

.field private mForwarded:Ljava/lang/Boolean;

.field public mForwarding:Z

.field private mFromBadge:Landroid/widget/ImageView;

.field private mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mFromText:Landroid/widget/TextView;

.field private mGroupRange:[Ljava/lang/String;

.field private mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

.field private mHasCcList:Z

.field private mHasNoBody:Z

.field private mHasToList:Z

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mImageId:[I

.field protected mInviteLink:Landroid/widget/Button;

.field mInviteTab:Landroid/widget/TextView;

.field private mIsCachedSenderInfo:Z

.field protected mIsDestoryStart:Z

.field private mIsDragged:Z

.field protected mIsEMLView:Z

.field private mIsMessageLoadedForTest:Z

.field private mIsOpenedRecipientInfo:Z

.field private mIsPatternMatchingEnd:Z

.field private mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

.field private mLastVerbDateTimeView:Landroid/widget/TextView;

.field private mLayoutWidth:I

.field public mLinearLayoutAddress:Landroid/widget/LinearLayout;

.field private mLinearLayoutCreate_count:I

.field public mLinearlayoutAttachment:Landroid/widget/LinearLayout;

.field public mLinearlayoutContent:Landroid/widget/LinearLayout;

.field public mLinearlayoutTitle:Landroid/widget/LinearLayout;

.field public mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

.field private mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLoadWhenResumed:Z

.field private mLoadingProgress:Landroid/view/View;

.field private mMailboxId:J

.field protected mMeetingDeleteEvent:Landroid/widget/Button;

.field private mMeetingLocationText:Landroid/widget/TextView;

.field private mMeetingLocationTextLabel:Landroid/widget/TextView;

.field protected mMeetingMaybe:Landroid/widget/CheckBox;

.field protected mMeetingNo:Landroid/widget/CheckBox;

.field private mMeetingTimeText:Landroid/widget/TextView;

.field private mMeetingTimeTextLabel:Landroid/widget/TextView;

.field protected mMeetingYes:Landroid/widget/CheckBox;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageId:J

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field public mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

.field private mMessageTab:Landroid/widget/TextView;

.field private mMessageTypeIcon:Landroid/widget/ImageView;

.field private mMessageViewFragment:Landroid/view/View;

.field protected mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mMoreMessage:Landroid/view/View;

.field public mMoreMessageHolder:Landroid/view/View;

.field private mNextPrevObserver:Landroid/database/ContentObserver;

.field public mNoSelectedEmail:Landroid/widget/LinearLayout;

.field public mOldBgColor:I

.field private mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

.field private mPermission:Landroid/widget/ImageView;

.field private mPrevNextCursor:Landroid/database/Cursor;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mProgressDialog2:Landroid/app/ProgressDialog;

.field protected mProposeNewTime:Landroid/widget/CheckBox;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

.field private mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

.field private mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

.field private mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

.field protected mResponseOptionsLayout:Landroid/widget/LinearLayout;

.field private mResumed:Z

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

.field private mSaveToCalendarHtmlText:Ljava/lang/String;

.field public mScrollviewInvite:Landroid/widget/ScrollView;

.field private mSignIcon:Landroid/widget/ImageView;

.field mSmimeDialog:Landroid/app/ProgressDialog;

.field public mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

.field private mSortType:I

.field private mStartX:F

.field private mStartY:F

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private mText1:Ljava/lang/String;

.field private mTextAnimation:Landroid/view/animation/Animation;

.field private mTextAttachmentTab:Landroid/widget/TextView;

.field private mTextInviteTab:Landroid/widget/TextView;

.field private mTextMessageTab:Landroid/widget/TextView;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mToButtonWidth:I

.field private mToEmail:Ljava/lang/String;

.field private mToMargin:Landroid/view/View;

.field private mToText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTolength:I

.field mUserChoiceDialog:Landroid/app/AlertDialog;

.field private mWaitForLoadMessageId:J

.field private m_nAttachmnetMargin:I

.field public mbtnToTheTop:Landroid/widget/Button;

.field private meetingTime1:Ljava/lang/String;

.field private meetingTime2:Ljava/lang/String;

.field private moreMessageDialog:Landroid/app/AlertDialog;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field public reqMemoReceiver:Landroid/content/BroadcastReceiver;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field private senderInfoForPhotoImage:Ljava/lang/String;

.field private showingLoadMore:Z

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;

.field versionDouble:Ljava/lang/Double;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x3e

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "[hH][tT][tT][pP][sS]?://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    const-string v0, "((?:([hH][tT][tT][pP][sS]?|[rR][tT][sS][pP]):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:(\\/|\\?)(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    sput v3, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sput v3, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    new-instance v0, Lcom/android/email/ViewPatternMatching;

    invoke-direct {v0}, Lcom/android/email/ViewPatternMatching;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->ZOOM_SCALE_ARRAY:[F

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sAttachmentListOpen:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const-string v0, ""

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sRecipientOpen:Z

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sSplitMoved:Z

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mViewMaxWidth:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "AndroidMail.Main"

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    const-string v0, "2.5"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurXPos:I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurYPos:I

    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mStartX:F

    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mStartY:F

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDragged:Z

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->m_nAttachmnetMargin:I

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->moreMessageDialog:Landroid/app/AlertDialog;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$11;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarding:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarded:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsCachedSenderInfo:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->MaxListCountInToCc:I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToButtonWidth:I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutCreate_count:I

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->FromRetainedObject:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBgColor:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOldBgColor:I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSortType:I

    return-void

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageWebViewHeight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurXPos:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurYPos:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->arrangeAttachments(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->controlTabFocus()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showContactStatusChangingLocale()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return p1
.end method

.method static synthetic access$5108(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return p1
.end method

.method static synthetic access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageViewFragmentBase;[J)[J
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$7402(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$7500(Landroid/os/AsyncTask;)V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBodyFromAttachmentCB(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->actionReplyForReadReceipt(J)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$9400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    return p1
.end method

.method static synthetic access$9600()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9602(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return p0
.end method

.method static synthetic access$9604()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9608()I
    .locals 2

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9700()I
    .locals 1

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9708()I
    .locals 2

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9802(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    return p0
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method private actionReplyForReadReceipt(J)V
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v5, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    cmp-long v0, p1, v11

    if-gez v0, :cond_0

    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionReplyForReadReceipt() : error! messageId == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : error! message is not exist!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    const-string v3, "Read: "

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, " "

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0805e7

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0802ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0805e8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    iput-wide v11, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    iput-boolean v10, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : Fatal error! controller.getInstance() returned null! It never be happened."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x3

    invoke-virtual {v0, v6, v3}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "textContent"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "htmlContent"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "textReply"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "htmlReply"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "introText"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sourceMessageKey"

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    :try_start_0
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/MessageCompose;->showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v3, "Exception occur."

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .locals 12

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v7, v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const v0, 0x7f1000dd

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001c7

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1001c6

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f100029

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10004f

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v5, 0x7f1001c8

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iget-boolean v6, v7, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    :cond_1
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    :cond_2
    iput-object v3, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    iput-object v2, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    iput-object v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    iput-object v5, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveiconView:Landroid/widget/ImageButton;

    iput-object v0, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->attachmentNameView:Landroid/widget/TextView;

    iget-object v6, v7, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0802fc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v9, :cond_1c

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c

    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment mime type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f02020a

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-boolean v9, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-nez v9, :cond_1d

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual {v8, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, v7, Lcom/android/email/AttachmentInfo;->mSize:J

    long-to-float v2, v2

    invoke-static {v0, v2}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "addAttachment : getActivity() returns Null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const v9, 0x7f020213

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f02020e

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/aac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x7f02020e

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/pdf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const v9, 0x7f02020f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const v9, 0x7f0201fb

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const v9, 0x7f0201f7

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-powerpoint"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    const v9, 0x7f020210

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/msword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const v9, 0x7f0201fc

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-excel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_10
    const v9, 0x7f020214

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_11
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1a

    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment file name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".gul"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    const v9, 0x7f02020b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".htm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    const v9, 0x7f020208

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".eml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const v9, 0x7f0201fe

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".rtf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    const v9, 0x7f020211

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".hwp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    const v9, 0x7f020209

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".vnt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    const v9, 0x7f02020c

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_18
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    const v9, 0x7f020212

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_19
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const v9, 0x7f020212

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1b
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1c
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1d
    iget-boolean v9, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v9, :cond_23

    iget v9, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_1f

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "flags"

    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, -0x23

    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1e
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1f
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v9, 0x64

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-boolean v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-eqz v4, :cond_20

    :cond_20
    iget-boolean v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    if-eqz v4, :cond_21

    :cond_21
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_22

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_22
    if-eqz p2, :cond_4

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_23
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_24
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private arrangeAttachments(I)V
    .locals 10

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-wide/16 v3, 0x0

    move-wide v8, v3

    move-wide v4, v8

    move v3, v1

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    iget-wide v6, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    add-long/2addr v4, v6

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080302

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    long-to-float v3, v4

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private cancelAllTasks()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    const-string v0, "Email"

    const-string v1, "cancelAllTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static cancelTask(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private captureScreen()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : getDir() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v17

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    :cond_1
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : WebPage original size - Width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_2

    if-gtz v1, :cond_3

    :cond_2
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : Width or Height is too small - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v5

    const/high16 v3, 0x3f80

    cmpl-float v3, v5, v3

    if-lez v3, :cond_6

    int-to-float v3, v1

    mul-float/2addr v3, v5

    float-to-int v4, v3

    int-to-float v3, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const-string v6, "MessageViewFragmentBase >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureScreen : WebPage scaled size - Width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x6a4

    if-gt v3, v6, :cond_4

    const-string v1, "MessageViewFragmentBase >>"

    const-string v6, "captureScreen : X1.5"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move/from16 v19, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v19

    :goto_1
    move v8, v3

    move v9, v4

    :goto_2
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureScreen : Print Image Type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v9, v3, :cond_9

    const/16 v3, 0x2fa

    if-le v2, v3, :cond_8

    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    :goto_3
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureScreen : Max Page size - Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_13

    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    const-string v12, "Sender : Samsung Electronics<sec@samsung.com>"

    const-string v14, "Date : 2011-03-24 10:25 (GMT+09:00)"

    const-string v15, "Title : final private float DEFAULT_SCALE_RATE = (float)1.5"

    const/4 v3, 0x1

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x100

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41a0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    move v11, v2

    move v13, v3

    move-object v2, v12

    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_b

    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v13, 0x1

    add-int v3, v11, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move v13, v5

    goto :goto_5

    :cond_4
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_5

    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    :cond_5
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_7

    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    move v8, v1

    move v9, v4

    move v1, v2

    goto/16 :goto_2

    :cond_7
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const v2, 0x44884000

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_3

    :cond_9
    const/16 v3, 0x2fa

    if-le v2, v3, :cond_a

    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_3

    :cond_a
    const/16 v2, 0x442

    move v10, v2

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : The page is too big to print"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v14

    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_c

    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    add-int v3, v11, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v15

    :goto_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_d

    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    add-int v3, v11, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_7

    :cond_d
    mul-int/lit8 v2, v13, 0x1e

    neg-int v2, v2

    :cond_e
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x1

    if-ne v9, v3, :cond_11

    const/high16 v3, 0x3fc0

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    if-eqz v1, :cond_f

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_f
    :goto_a
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_12

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_10
    :goto_b
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v3, 0x1

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_c
    add-int/2addr v2, v10

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    :catch_1
    move-exception v4

    const-string v4, "MessageViewFragmentBase >>"

    const-string v5, "captureScreen : FAILED to save bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_12
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : image file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    move v11, v3

    goto/16 :goto_7

    :cond_15
    move v11, v3

    goto/16 :goto_6

    :cond_16
    move v11, v3

    move v13, v5

    goto/16 :goto_5
.end method

.method private changeLoadMoreBtnText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "jebarlin >>> Changing the Button Text >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$3;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v1, 0x7f08008d

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageViewForSeven;->canDownload(Lcom/android/email/AttachmentInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v4, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0802ff

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f080300

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    :cond_1
    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    :cond_2
    return-object v0
.end method

.method private final clearTabFlags(I)V
    .locals 2

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    return-void
.end method

.method private controlTabFocus()V
    .locals 6

    const v5, 0x7f100206

    const v4, 0x7f100204

    const v3, 0x7f100202

    const v2, 0x7f1001f9

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_1

    :cond_a
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Can not reach here"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Do nothing"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    const/4 v7, 0x0

    const/16 v0, 0x2f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v0, 0x2

    move v2, v0

    :goto_1
    const v0, 0x7fffffff

    if-ge v2, v0, :cond_5

    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Email"

    const-string v5, "createUniqueFile || Exception"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/File;

    const-string v1, "IllegalFormat-%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    return-void
.end method

.method private doFinishLoadAttachment(JZ)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-boolean v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    iget-boolean v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    iget-boolean v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    :goto_0
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFinishLoadAttachment - isSave : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", showView : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x63

    iput v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_1
.end method

.method private findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x20010

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 2

    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIconById(J)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    sget v4, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sget v5, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment preview failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStorageSize(Ljava/io/File;)J
    .locals 8

    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    mul-long v2, v0, v4

    return-wide v2
.end method

.method private hasInlineDataImage(JI)Z
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f080511

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p3, v5, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    const-string v3, "2.5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "isMimeLoaded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAvailableStorageSize(J)Z
    .locals 12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v7

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v1

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v9, v7, p1

    if-lez v9, :cond_0

    cmp-long v9, v1, p1

    if-lez v9, :cond_0

    cmp-long v9, v4, p1

    if-lez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isAvailableStorageSize error : attachsize=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] externalSize=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] dataSize=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] downloadSize=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    :cond_0
    iget-object v6, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-boolean v6, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x21

    and-int/lit8 v3, v5, -0x3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "flags"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    :cond_1
    :goto_1
    return v4

    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private onCancelDownloadAllAttachment()V
    .locals 4

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$6;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onClickSender()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/activity/ContactPreviewPopup;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "index"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "from"

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7011214

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private onDownloadAttachmentAll()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v0, "Email"

    const-string v2, "onDownloadAttachmentAll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v4, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$7;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    invoke-static {v1}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const-string v0, "MessageViewFragmentBase >>"

    const-string v2, "btl : Premium account onDownloadAttachmentAll called!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    :goto_1
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-boolean v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    if-nez v3, :cond_4

    iput-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f08022a

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$8;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$9;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    new-array v2, v4, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0802ff

    invoke-static {v0, v1, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$5;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    sput-wide v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    const-string v1, "SMIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-nez p2, :cond_5

    move v7, v0

    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 v7, 0x20

    goto :goto_2
.end method

.method private onLoadMessageForView()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : entered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bIsPop3Acc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : POPIMAP is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><table width=\"100%\" height=\"100%\"><tr><td align=\"center\" valign=\"center\"><font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></td></tr></table></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://onLoadMessageForView/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : call controller.loadMessageForView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, v5

    goto/16 :goto_0
.end method

.method private onMarkAsRead(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$17;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$18;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private onMoreMessage()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    const-string v0, "SMIME"

    const-string v1, "SMIMEUtilsCallback::onMoreMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    :cond_0
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    const-string v4, "application/octet-stream"

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0802fc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v3, "Email"

    const-string v4, "Utility.createUniqueFile - return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008d

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_3
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    :cond_6
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_0

    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v10

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_1

    :cond_9
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    move-object v9, v0

    :goto_5
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v1, v10

    goto/16 :goto_1
.end method

.method private onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    const-string v4, "application/octet-stream"

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :goto_2
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_3
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008d

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v9, v0

    :goto_5
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v1, v10

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto :goto_3
.end method

.method private onShowDetails2()V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f020261

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setLayoutAnim_slidedownfromtop(Landroid/view/ViewGroup;)V

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f020260

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f02025b

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setLayoutAnim_slidedownfromtop(Landroid/view/ViewGroup;)V

    :goto_3
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "ArrayIndexOutOfBoundsException when set visible bubble button"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    :try_start_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_6
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "ArrayIndexOutOfBoundsException when set visible bubble button"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1, v1}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearView()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getAttachmentIntentToFile(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 4

    const-string v1, "<IMG+.*?>"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "jebarlin >>> Body Contains IMG tag"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "SRC=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >>> Body Contains IMG tag but not SRC"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string v0, "abcdef"

    const-string v2, "plain text"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "<html> <body> <div style=\"word-break:keep-all;\">"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</div></body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_1
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    const/4 v2, 0x0

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v2, v4

    new-array v2, v2, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    const/4 v3, 0x0

    array-length v5, v4

    const/4 v2, 0x0

    move v11, v2

    move-object v2, v1

    move v1, v3

    move v3, v11

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\\E\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, " src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " contentIdRe :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " srcContentUri :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\E\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " background=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v2, v1

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "width=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "height=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HANATHEONE mBodyImageInfo number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_1
    const-string v0, "(?i)<meta name=\"viewport\"[^>]+>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "contenteditable=\"true\""

    const-string v1, "contenteditable=\"false\""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    if-nez p3, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    :cond_4
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    :goto_4
    return-object v2

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private reloadUiFromBodyFromAttachmentCB(J)V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\\E\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, " src=\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\\E\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " background=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "width=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "height=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    array-length v6, v4

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-wide v7, v4, v2

    cmp-long v7, v7, p1

    if-nez v7, :cond_6

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    goto :goto_1

    :cond_3
    const-string v2, "Email"

    const-string v4, "This routine can not be run."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Email"

    const-string v4, "If this log appeared, something wrong on the BodyImageInfo inst.!\n"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New attachment added (id = : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " )"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment.mContentUri : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment.mFileName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v2, v2

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    :goto_3
    if-ge v1, v2, :cond_5

    new-instance v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v6, v4, v1

    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v7, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v6, v1

    :cond_4
    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aput-object v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sput-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v1, v4, v2

    aget-object v1, v4, v2

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    aget-object v1, v4, v2

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private removeAllAttachments()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    return-void
.end method

.method private setAttachmentCount(I)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_0
.end method

.method private setMessageWebViewHeight()V
    .locals 6

    const/high16 v5, 0x3f80

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getContentHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v3

    if-lez v0, :cond_3

    cmpl-float v4, v3, v5

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageWebView;->setInitScale(F)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v4

    const/16 v5, 0xbe

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageWebView;->setEmailWebViewContentHeight(I)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    goto :goto_0

    :cond_4
    cmpl-float v4, v3, v5

    if-lez v4, :cond_0

    goto :goto_0
.end method

.method private setResponseOptions(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private setTabTextStyle(I)V
    .locals 8

    const v7, 0x7f1001d5

    const/4 v6, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f0b003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setToMessageTab(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v6

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showContactStatusChangingLocale()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0805bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method

.method private showRecipientList(IIII)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0802d8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v4, 0x7f0802d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_0

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v4, p0, v0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    if-lez p2, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v0, p0, v3, v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_3

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test3   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040094

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$15;

    invoke-direct {v3, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$15;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method private showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_1

    const v0, 0x7f08008d

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080300

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$4;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startMediaScan(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method

.method private updateAttachmentThumbnail(J)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ControlBgColor(IZ)V
    .locals 8

    const-string v0, "Email"

    const-string v1, "Change background color!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].getElementsByTagName(\'div\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f020261

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Email"

    const-string v1, "mMessageWebView.loadUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public ControlPrint()V
    .locals 3

    const-string v0, "Email"

    const-string v1, "ControlPrint started!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.mobileprint.PRINT"

    const-string v0, "email_printing_image.png"

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->captureScreen()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : captureScreen() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : The captured image does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "email_printing_image.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : There is no Activity prints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected IsEAS()Z
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v0

    return v0
.end method

.method protected final addTabFlags(I)V
    .locals 4

    const v3, 0x7f100202

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public changeBgColorDialog()Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    const-string v0, "Email"

    const-string v4, "changeBgColorDialog enter!!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v6, v6, v1

    invoke-direct {v0, p0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v6, v6, v7

    invoke-direct {v0, p0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f04005f

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0801df

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getDPModeColor()I

    move-result v0

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$16;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$16;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/Preferences;)V

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    return-object v0

    :cond_2
    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v7, v7, v0

    invoke-direct {v5, p0, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    int-to-long v1, v1

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before checkDPM_Attachments DPM.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachment.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    :cond_1
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDPM_Attachments  DPM.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachment.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearContent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return-void
.end method

.method public closePrevNextCursor()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "mPrevNextCuror is not null, close cursor and observer"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    :cond_1
    return-void
.end method

.method public extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    move v5, v1

    move v2, v1

    move v4, v1

    move v0, v1

    move v6, v1

    :goto_1
    if-ge v5, v10, :cond_9

    aget-char v11, v9, v5

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_1

    move v0, v3

    :cond_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v12, 0x9

    if-le v6, v12, :cond_3

    invoke-virtual {v8, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<script"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    move v4, v3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</script>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    move v4, v1

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<style"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    move v2, v3

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</style>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_7

    move v2, v1

    :cond_7
    const/16 v12, 0x3e

    if-ne v11, v12, :cond_8

    move v0, v1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&#43;"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public finishAttachmentDownloadForZ7(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "finishAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x186a2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method public getAlwaysDecryptOrVerifyMails()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isCheckSMIME"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getContactProviderStatus()I
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method protected final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public getMessageWebView()Lcom/android/email/activity/MessageWebView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    return-object v0
.end method

.method public getRecipientlength()I
    .locals 4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    array-length v3, v2

    add-int/2addr v1, v3

    :cond_2
    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public initAttachmentDownloadForZ7()V
    .locals 4

    const v3, 0x186a0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "initAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btl : initAttachmentDownloadForZ7 mAttachmentCnt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public isMessageLoadedForTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isMessageSpecified()Z
.end method

.method public loadContentFromServer(Z)V
    .locals 7

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->isBodyDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator()V

    :cond_3
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction()V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected final loadMessageIfResumed()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    if-nez v0, :cond_1

    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    :cond_1
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public messageChanged()V
    .locals 14

    const-wide/16 v12, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageView: messageChanged to id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    :cond_0
    sput-boolean v8, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->closePrevNextCursor()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelTask(Landroid/os/AsyncTask;)V

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "messageType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    and-long/2addr v2, v12

    cmp-long v0, v2, v12

    if-nez v0, :cond_5

    move v0, v7

    :goto_0
    sput-boolean v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** SMS is True ********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    const/16 v3, 0x61

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    :try_start_2
    const-string v0, "Email"

    const-string v2, "Exception on getting mMessageId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800c4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_8
    move-object v1, v6

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewForSeven;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    :cond_2
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_0

    :sswitch_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentAll()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowDetails2()V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadMessageForView()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_0
        0x7f1000dd -> :sswitch_2
        0x7f1001c8 -> :sswitch_3
        0x7f1001e5 -> :sswitch_9
        0x7f1001e6 -> :sswitch_1
        0x7f100202 -> :sswitch_6
        0x7f100203 -> :sswitch_6
        0x7f100204 -> :sswitch_7
        0x7f100205 -> :sswitch_7
        0x7f100206 -> :sswitch_8
        0x7f100207 -> :sswitch_8
        0x7f10020b -> :sswitch_a
        0x7f100211 -> :sswitch_5
        0x7f100213 -> :sswitch_4
        0x7f100216 -> :sswitch_b
    .end sparse-switch
.end method

.method public onClickAddressButton(Ljava/lang/String;Lcom/android/email/bubblebutton/BubbleButton;I)V
    .locals 0

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v4, "MessageViewFragmentBase >>"

    const-string v5, "[HJP] onConfigurationChanged() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MessageViewFragmentBase >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HJP] newConfig.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MessageViewFragmentBase >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_1

    const/16 v4, 0x13a

    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    :goto_0
    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->setBubbleLayout(I)V

    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    if-ne v4, v7, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/email/activity/MessageWebView;->showFindDialog(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v4, 0x270

    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/email/activity/MessageWebView;->showFindDialog(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCopyImage(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCopyImage : Copy image - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/copyImage.bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v3

    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v4, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Email"

    const-string v4, "onCopyImage : : failed to decode the image file."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_1
    return v0

    :cond_3
    :try_start_4
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    const-string v2, "Email"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_3
    const-string v1, "Email"

    const-string v3, "onCopyImage : NullPointerException"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_5
    move v0, v1

    goto :goto_1

    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v2, "clipboardEx"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    invoke-virtual {v2, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Email"

    const-string v2, "onCopyImage : : clipEx.setData returned false."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string v0, "Email"

    const-string v2, "onCopyImage : : Copied the selected image successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_6
    move-exception v0

    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v1, v3

    goto :goto_2

    :cond_7
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REQ_INFO_FROM_MINI_MEMO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x3

    const/16 v8, 0xff

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const v0, 0x7f040086

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v4, 0x7f1001de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f1001df

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/MessageScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e0

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e1

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e2

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001eb

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ea

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e9

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ec

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_4

    const/16 v0, 0x270

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v4}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v4}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001ed

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100008

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fd

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ff

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fc

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fe

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f9

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020206

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f020207

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f0200af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f0200b1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f0200b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100171

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100173

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100201

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100202

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100204

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100206

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100208

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100209

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageWebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setScrollViewMain(Landroid/widget/ScrollView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setMessageWebView(Lcom/android/email/activity/MessageWebView;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setViewFontSize(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f10020c

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f10020d

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100212

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100210

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100213

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlldownloadIconVisible:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100211

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100214

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100215

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100216

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100218

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-nez v0, :cond_8

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v4, 0x7f0801e0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const v4, 0x7f0801e1

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const v4, 0x7f0801e2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const v4, 0x7f0801e3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsAmoledHardware()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "#000000"

    aput-object v4, v0, v1

    const-string v4, "#000010"

    aput-object v4, v0, v7

    const-string v4, "#C8C8C8"

    aput-object v4, v0, v2

    const-string v4, "#FFFFFF"

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0x69

    const/16 v5, 0x61

    const/16 v6, 0x45

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0xc8

    const/16 v5, 0xc8

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0xde

    const/16 v5, 0xd5

    const/16 v6, 0xb3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x1f

    const/16 v5, 0x21

    const/16 v6, 0x24

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    :goto_3
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getDPModeColor()I

    move-result v0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/winset/MessageScrollView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v4

    if-nez v4, :cond_a

    if-eq v0, v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    return-object v0

    :cond_4
    const/16 v0, 0x13a

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v4, v5, p0}, Lcom/android/email/activity/MessageViewForSeven;->onInit(Landroid/content/Context;Landroid/view/View;Lcom/android/email/activity/MessageViewFragmentBase;)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    sget-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, p0}, Lcom/android/email/activity/MessageViewForSeven;->z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "#000000"

    aput-object v4, v0, v1

    const-string v4, "#000010"

    aput-object v4, v0, v7

    const-string v4, "#696145"

    aput-object v4, v0, v2

    const-string v4, "#FFFFFF"

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x69

    const/16 v5, 0x61

    const/16 v6, 0x45

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    const/16 v4, 0xeb

    const/16 v5, 0xeb

    const/16 v6, 0xeb

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0xde

    const/16 v5, 0xd5

    const/16 v6, 0xb3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x44

    const/16 v5, 0x44

    const/16 v6, 0x44

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    goto/16 :goto_3

    :cond_a
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsAmoledHardware()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    goto/16 :goto_4

    :cond_b
    move v0, v1

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewGone()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->destroy()V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method public onMemoPlus()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMAIL_TO_MEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "email_title"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "email_date"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    const-string v2, "email_message"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    :try_start_1
    const-string v1, "email_message"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Email"

    const-string v2, "onMemoPlus : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onMessageShown(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewShown(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method protected onPostLoadBody()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->onResume()V

    :cond_1
    return-void
.end method

.method public onSaveImage(Z)V
    .locals 12

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/download/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v0, "content://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v5, v4

    move v0, v4

    :goto_0
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-nez v0, :cond_1

    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    :goto_1
    :try_start_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HANATHEONE file name: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_f

    move-result-object v0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10

    :try_start_3
    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f08008c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_11

    :cond_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    if-nez v4, :cond_e

    :try_start_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0801c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_6
    :goto_5
    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v2, v5, v8

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    move v4, v1

    move-object v5, v2

    move-object v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    move v11, v4

    move-object v4, v2

    move v2, v11

    :goto_6
    :try_start_8
    const-string v5, "Email"

    const-string v7, "ActivityNotFoundException1"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v0, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    :cond_9
    :goto_8
    move-object v5, v4

    move v4, v2

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    :goto_9
    :try_start_b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008d

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v2, :cond_a

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_a
    :goto_a
    if-eqz v1, :cond_5

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    :goto_b
    :try_start_e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008d

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :cond_b
    :goto_c
    if-eqz v1, :cond_5

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_d
    if-eqz v2, :cond_c

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_c
    :goto_e
    if-eqz v1, :cond_d

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    :cond_d
    :goto_f
    throw v0

    :cond_e
    :try_start_13
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    move-result-object v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const-string v1, "Email"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const-string v1, "Email"

    const-string v2, "IllegalStateException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    :catch_7
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper2."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_8
    move-exception v2

    goto :goto_e

    :catch_9
    move-exception v1

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v2

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    goto :goto_d

    :catchall_3
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    goto :goto_d

    :catchall_4
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_d

    :catch_f
    move-exception v0

    move-object v1, v3

    goto/16 :goto_b

    :catch_10
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_b

    :catch_11
    move-exception v3

    move-object v3, v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    move-object v1, v3

    goto/16 :goto_9

    :catch_13
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_9

    :catch_14
    move-exception v3

    move-object v3, v0

    goto/16 :goto_9

    :catch_15
    move-exception v0

    move-object v0, v3

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_16
    move-exception v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_17
    move-exception v3

    move-object v3, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewForSeven;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetWallpaper()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveImage(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x1

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->makeAttachmentInfos(J)V

    :cond_1
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "isMimeLoaded"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-eq v1, v10, :cond_3

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->hasInlineDataImage(JI)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    :cond_4
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_e

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    :goto_4
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v10, :cond_8

    const-string v2, "MessageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message.mFlagLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_5

    const-string v2, "2.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "isMimeLoaded"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v7

    :cond_9
    if-ne v0, v7, :cond_c

    const-string v0, "MessageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Message Truncated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_b

    :cond_a
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    :goto_6
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    :cond_f
    if-eqz p2, :cond_10

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_4

    :cond_10
    if-eqz p2, :cond_11

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_11

    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    :goto_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    :goto_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    goto :goto_7

    :cond_12
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_8

    :cond_13
    if-eqz p2, :cond_14

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_16

    :cond_15
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    :goto_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    :cond_16
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_9

    :cond_17
    move v0, v6

    goto/16 :goto_0
.end method

.method protected resetView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/MessageScrollView;->resetMessageScrollView()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->resetMessageWebView()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->stopLoading()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearHistory()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearViewState()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearView()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseEmailViewPort(Z)V

    :goto_1
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->z7StopDownloading()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    const-string v0, "Email"

    const-string v1, "resetView()"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_1
.end method

.method public saveRecipientAsGroupDialog()Landroid/app/Dialog;
    .locals 9

    const/4 v2, 0x0

    const v8, 0x7f0802d8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    if-lez v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0802d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    :cond_0
    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f040095

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "range"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$14;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$14;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080043

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    :goto_1
    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    invoke-direct {p0, v0, v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    move-object v0, v2

    goto :goto_1
.end method

.method public setAlwaysDecryptOrVerifyMails(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isCheckSMIME"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setBubbleLayout(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-void
.end method

.method setCurrentTab(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    return-void
.end method

.method public setViewFontSize(I)V
    .locals 9

    const/16 v8, 0xd

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/16 v4, 0x14

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_1

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    return-void

    :pswitch_0
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_4
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_5
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_9
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_3

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    packed-switch p1, :pswitch_data_2

    goto :goto_1

    :pswitch_a
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_b
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_d
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    :pswitch_e
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_4

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_13
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_6

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v3

    if-eqz v3, :cond_5

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_14
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_16
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_18
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :cond_5
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_1a
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_1c
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_1d
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :cond_6
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    :pswitch_1e
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_21
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_22
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public showContent(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showDownloadITPolicyToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method

.method public showHTMLITPolicyToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803d0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method

.method public showLoadMoreButton(Z)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v2, :cond_0

    const-string v2, "Inline Image"

    const-string v3, "Showing Load More2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v2, :cond_1

    const-string v2, "Inline Image"

    const-string v3, "Showing Load More1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPop3ImapITPolicyToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803cf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method

.method protected showPopUpOnImage(I)Landroid/app/Dialog;
    .locals 11

    const/4 v4, 0x0

    const v10, 0x7f0801e9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v4

    :pswitch_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a7

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a8

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801a9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801aa

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "content://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v3, v0

    move-object v2, v4

    :goto_1
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    if-nez v0, :cond_3

    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    if-nez v8, :cond_1

    const-string v8, "Email"

    const-string v9, "FILENAME = mBodyImageInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v2, "http://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    move v0, v1

    :cond_3
    :goto_3
    if-ne v0, v1, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$12;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$13;

    invoke-direct {v0, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$13;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_6
    move-object v2, v4

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startAttachmentDownloadForZ7(JJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "startAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x186a1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int v1, p3

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startSmimeProcessing()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "__attachment_message_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto :goto_0
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 9

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    const-string v1, ""

    const-string v0, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    :cond_0
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, ""

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    array-length v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_4

    aget-object v1, v3, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v3, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5, v1, v2, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    array-length v0, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    const/4 v0, 0x0

    :goto_2
    array-length v1, v4

    if-ge v0, v1, :cond_5

    aget-object v1, v4, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v4, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_3
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_10

    packed-switch v0, :pswitch_data_0

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :try_start_1
    new-instance v0, Lcom/android/emailcommon/mail/PackedString;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd,yyyy hh:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    const-string v3, "Meeting Req"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DTSTART"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DTEND"

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LOC"

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "------------GS------------"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 1 meetingLocation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    int-to-long v7, v2

    sub-long/2addr v5, v7

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v7, v2

    sub-long v2, v3, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "Meeting Req"

    const-string v3, "Meeting ends same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "------------GS------------"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 2 meetingLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    :goto_b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_c
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x402c333333333333L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$10;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    :goto_d
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "updateHeaderView : Exception has occoured"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_11
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_15
    :try_start_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_16
    :try_start_3
    const-string v2, "Meeting Req"

    const-string v3, "Meeting does not end same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_17
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_18
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1d
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1f
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateTabFlags(I)V
    .locals 8

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f1001db

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    :cond_0
    const-string v0, "PROPOSE_NEW_TIME"

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v6

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    :cond_3
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    iget v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_6
    return-void

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_4
.end method
