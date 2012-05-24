.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/view/View;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListItem$SearchItem;
    }
.end annotation


# static fields
.field private static iconStackRightBound:I

.field private static mSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sAttachmentIconDimmed:Landroid/graphics/Bitmap;

.field private static sAttachmentIconPressed:Landroid/graphics/Bitmap;

.field private static sAttachmentPaddingLeft:I

.field private static sAttachmentPaddingTopHuge:I

.field private static sAttachmentPaddingTopLarge:I

.field private static sAttachmentPaddingTopNormal:I

.field private static sAttachmentPaddingTopSmall:I

.field private static sAttachmentPaddingTopTiny:I

.field private static sBackgroundThreadItemColorLightReadDarkTheme:I

.field private static sBackgroundThreadItemColorLightReadWhiteTheme:I

.field private static sBackgroundThreadItemColorLightUnreadDarkTheme:I

.field private static sBackgroundThreadItemColorLightUnreadWhiteTheme:I

.field private static sCheckboxHitWidth:I

.field private static sCheckboxPaddingTopHuge:I

.field private static sCheckboxPaddingTopLarge:I

.field private static sCheckboxPaddingTopNormal:I

.field private static sCheckboxPaddingTopSmall:I

.field private static sCheckboxPaddingTopTiny:I

.field private static sColorTipWidth:I

.field private static sDatePaddingRight:I

.field private static sDatePaddingRightDark:I

.field private static sDatePaddingTopHuge:I

.field private static sDatePaddingTopLarge:I

.field private static sDatePaddingTopNormal:I

.field private static sDatePaddingTopSmall:I

.field private static sDatePaddingTopTiny:I

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static sDateReadTextColorDarkDarkTheme:I

.field private static sDateReadTextColorDarkWhiteTheme:I

.field private static sDateReadTextColorLightDarkTheme:I

.field private static sDateReadTextColorLightWhiteTheme:I

.field private static sDateUnReadTextColorDarkDarkTheme:I

.field private static sDateUnReadTextColorDarkWhiteTheme:I

.field private static sDateUnReadTextColorLightDarkTheme:I

.field private static sDateUnReadTextColorLightWhiteTheme:I

.field private static sDraftIconClient:Landroid/graphics/Bitmap;

.field private static sDraftIconServer:Landroid/graphics/Bitmap;

.field private static sEncryptIcon:Landroid/graphics/Bitmap;

.field private static sFavoriteHitWidth:I

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sFavoriteIconPressed:Landroid/graphics/Bitmap;

.field private static sFavoriteIconWidth:I

.field private static sFavoritePaddingRight:I

.field private static sFavoritePaddingRightDark:I

.field private static sFavoritePaddingTopHuge:I

.field private static sFavoritePaddingTopLarge:I

.field private static sFavoritePaddingTopNormal:I

.field private static sFavoritePaddingTopSmall:I

.field private static sFavoritePaddingTopTiny:I

.field private static sFocusedBackgroundColorDarkTheme:I

.field private static sFocusedBackgroundColorWhiteTheme:I

.field private static sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewImage:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

.field private static sInit:Z

.field private static sIrmIcon:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForward:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReply:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

.field private static sListLineDarkDark:Landroid/graphics/Bitmap;

.field private static sListLineDarkTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

.field private static sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineWhiteTheme:Landroid/graphics/Bitmap;

.field private static sMainTextPaddingLeft:I

.field private static sMainTextPaddingRight:I

.field private static sMainTextPaddingTopHuge:I

.field private static sMainTextPaddingTopLarge:I

.field private static sMainTextPaddingTopNormal:I

.field private static sMainTextPaddingTopSmall:I

.field private static sMainTextPaddingTopTiny:I

.field private static final sMainTextPaint:Landroid/text/TextPaint;

.field private static sMainTextReadTextColorDarkDarkTheme:I

.field private static sMainTextReadTextColorDarkWhiteTheme:I

.field private static sMainTextReadTextColorLightDarkTheme:I

.field private static sMainTextReadTextColorLightWhiteTheme:I

.field private static sMainTextUnReadTextColorDarkDarkTheme:I

.field private static sMainTextUnReadTextColorDarkWhiteTheme:I

.field private static sMainTextUnReadTextColorLightDarkTheme:I

.field private static sMainTextUnReadTextColorLightWhiteTheme:I

.field private static sMatchedtextColorDarkTheme:I

.field private static sMatchedtextColorWhiteTheme:I

.field private static sMeetingRequestIcon:Landroid/graphics/Bitmap;

.field private static sMorePadding:I

.field private static sMorePaddingVertical:I

.field private static sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sPaddingIconMiddleHuge:I

.field private static sPaddingIconMiddleLarge:I

.field private static sPaddingIconMiddleNormal:I

.field private static sPaddingIconMiddleSmall:I

.field private static sPaddingIconMiddleTiny:I

.field private static sPaddingTextEndHuge:I

.field private static sPaddingTextEndLarge:I

.field private static sPaddingTextEndNormal:I

.field private static sPaddingTextEndSmall:I

.field private static sPaddingTextEndTiny:I

.field private static sPaddingTextMiddleHuge:I

.field private static sPaddingTextMiddleLarge:I

.field private static sPaddingTextMiddleNormal:I

.field private static sPaddingTextMiddleSmall:I

.field private static sPaddingTextMiddleTiny:I

.field private static sPaddingTextTopHuge:I

.field private static sPaddingTextTopLarge:I

.field private static sPaddingTextTopNormal:I

.field private static sPaddingTextTopSmall:I

.field private static sPaddingTextTopTiny:I

.field private static sPressedTextColorDarkTheme:I

.field private static sPressedTextColorWhiteTheme:I

.field private static sPriorityIconHigh:Landroid/graphics/Bitmap;

.field private static sPriorityIconHighPressed:Landroid/graphics/Bitmap;

.field private static sPriorityIconLow:Landroid/graphics/Bitmap;

.field private static sPriorityIconLowPressed:Landroid/graphics/Bitmap;

.field private static sSMSIcon:Landroid/graphics/Bitmap;

.field private static sSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

.field private static sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

.field private static sSignIcon:Landroid/graphics/Bitmap;

.field private static final sSnippetPaint:Landroid/text/TextPaint;

.field private static sSnippetReadTextColorDarkDarkTheme:I

.field private static sSnippetReadTextColorDarkWhiteTheme:I

.field private static sSnippetReadTextColorLightDarkTheme:I

.field private static sSnippetReadTextColorLightWhiteTheme:I

.field private static sSnippetUnReadTextColorDarkDarkTheme:I

.field private static sSnippetUnReadTextColorDarkWhiteTheme:I

.field private static sSnippetUnReadTextColorLightDarkTheme:I

.field private static sSnippetUnReadTextColorLightWhiteTheme:I

.field private static final sSubTextPaint:Landroid/text/TextPaint;

.field private static sSubTextReadTextColorDarkDarkTheme:I

.field private static sSubTextReadTextColorDarkWhiteTheme:I

.field private static sSubTextReadTextColorLightDarkTheme:I

.field private static sSubTextReadTextColorLightWhiteTheme:I

.field private static sSubTextUnReadTextColorDarkDarkTheme:I

.field private static sSubTextUnReadTextColorDarkWhiteTheme:I

.field private static sSubTextUnReadTextColorLightDarkTheme:I

.field private static sSubTextUnReadTextColorLightWhiteTheme:I

.field private static sTextReadOpacityDarkTheme:I

.field private static sTextReadOpacityWhiteTheme:I

.field private static sTextSizeHuge:I

.field private static sTextSizeLarge:I

.field private static sTextSizeMainTextHuge:I

.field private static sTextSizeMainTextLarge:I

.field private static sTextSizeMainTextNormal:I

.field private static sTextSizeMainTextSmall:I

.field private static sTextSizeMainTextTiny:I

.field private static sTextSizeNormal:I

.field private static sTextSizeSmall:I

.field private static sTextSizeTiny:I

.field private static sTextUnreadOpacityDarkTheme:I

.field private static sTextUnreadOpacityWhiteTheme:I

.field private static sThreadListPadding:I

.field private static sVerbPaddingTopHuge:I

.field private static sVerbPaddingTopLarge:I

.field private static sVerbPaddingTopNormal:I

.field private static sVerbPaddingTopSmall:I

.field private static sVerbPaddingTopTiny:I

.field private static sViewHeightHugePreviewOne:I

.field private static sViewHeightHugePreviewThree:I

.field private static sViewHeightHugePreviewTwo:I

.field private static sViewHeightHugePreviewZero:I

.field private static sViewHeightLargePreviewOne:I

.field private static sViewHeightLargePreviewThree:I

.field private static sViewHeightLargePreviewTwo:I

.field private static sViewHeightLargePreviewZero:I

.field private static sViewHeightNormalPreviewOne:I

.field private static sViewHeightNormalPreviewThree:I

.field private static sViewHeightNormalPreviewTwo:I

.field private static sViewHeightNormalPreviewZero:I

.field private static sViewHeightSmallPreviewOne:I

.field private static sViewHeightSmallPreviewThree:I

.field private static sViewHeightSmallPreviewTwo:I

.field private static sViewHeightSmallPreviewZero:I

.field private static sViewHeightTinyPreviewOne:I

.field private static sViewHeightTinyPreviewThree:I

.field private static sViewHeightTinyPreviewTwo:I

.field private static sViewHeightTinyPreviewZero:I

.field private static sVoiceMailIcon:Landroid/graphics/Bitmap;


# instance fields
.field public isEncrypted:Z

.field private isLastThreadItem:Z

.field public isSigned:Z

.field public isSms:Z

.field public isVoiceMail:Z

.field mAccountId:J

.field public mAccountSchema:Ljava/lang/String;

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mAttachmentIcon:Landroid/graphics/Bitmap;

.field private mAttachmentPaddingTop:I

.field private mBackgroundThreadItemColorLightRead:I

.field private mBackgroundThreadItemColorLightUnread:I

.field public mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field public mCheckboxDisabled:Z

.field private mCheckboxPaddingTop:I

.field public mCheckboxPressed:Z

.field public mChildCount:I

.field public mChildIndex:I

.field public mColorChipBitmap:Landroid/graphics/NinePatch;

.field public mConvId:Ljava/lang/String;

.field public mConvThreadId:I

.field private mCurrentSelectIdx:I

.field private mDatePaddingTop:I

.field private mDateReadTextColorDark:I

.field private mDateReadTextColorLight:I

.field private mDateUnReadTextColorDark:I

.field private mDateUnReadTextColorLight:I

.field private mDownEvent:Z

.field private mFavoriteIcon:Landroid/graphics/Bitmap;

.field private mFavoritePaddingTop:I

.field public mFlagComFFConv:I

.field public mFlagReadConv:I

.field public mFlagSetFFConv:I

.field private mFocusedBackgroundColor:I

.field public mFollowUpFlagStatus:I

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedMainText:Ljava/lang/CharSequence;

.field private mFormattedSubText:Ljava/lang/CharSequence;

.field public mHasAttachment:Z

.field public mHasDivider:Z

.field public mHasFavoriteIcon:Z

.field public mHasInvite:Z

.field public mHasIrm:Z

.field public mHasLastVerbIcon:Z

.field public mHasPriorityIcon:Z

.field public mHasReplyIcon:Z

.field public mHasTitleIcon:Z

.field private mHighlightMainText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSnippet:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSubText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBgColorChanged:Z

.field public mIsFavorite:Z

.field public mLastVerb:I

.field private mLastVerbPaddingTop:I

.field private mLastverbIcon:Landroid/graphics/Bitmap;

.field private mListLineNinepatch:Landroid/graphics/NinePatch;

.field mMailboxId:J

.field public mMailboxType:I

.field public mMainText:Ljava/lang/String;

.field private mMainTextPaddingTop:I

.field private mMainTextReadTextColorDark:I

.field private mMainTextReadTextColorLight:I

.field private mMainTextUnReadTextColorDark:I

.field private mMainTextUnReadTextColorLight:I

.field private mMatchedtextColor:I

.field mMessageId:J

.field public mNeedMorePadding:Z

.field private mPaddingIconMiddle:I

.field private mPaddingTextEnd:I

.field private mPaddingTextMiddle:I

.field private mPaddingTextTop:I

.field public mParentIndex:I

.field public mPosition:I

.field private mPressedTextColor:I

.field public mPreviewLineSize:I

.field public mPriority:I

.field private mPriorityIcon:Landroid/graphics/Bitmap;

.field public mRead:Z

.field private mReplyIcon:Landroid/graphics/Bitmap;

.field private mSearchString:Ljava/lang/String;

.field private mSelectedIconOff:Landroid/graphics/Bitmap;

.field private mSelectedIconOn:Landroid/graphics/Bitmap;

.field public mServerId:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;

.field public mSnippetLineCount:I

.field private mSnippetLines:[Ljava/lang/CharSequence;

.field private mSnippetReadTextColorDark:I

.field private mSnippetReadTextColorLight:I

.field private mSnippetUnReadTextColorDark:I

.field private mSnippetUnReadTextColorLight:I

.field public mSubText:Ljava/lang/String;

.field private mSubTextReadTextColorDark:I

.field private mSubTextReadTextColorLight:I

.field private mSubTextUnReadTextColorDark:I

.field private mSubTextUnReadTextColorLight:I

.field private mTextReadOpacity:I

.field private mTextSize:I

.field private mTextSizeMainText:I

.field private mTextUnreadOpacity:I

.field public mTimestamp:J

.field private mViewHeight:I

.field private mViewWidth:I

.field public mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calculateDrawingData()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRightDark:I

    :goto_1
    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    int-to-float v5, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_17

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_17

    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    :goto_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    :goto_3
    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v5, :cond_6

    :cond_1
    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    :goto_4
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v3, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    sget v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v1, v3

    sub-int v5, v1, v0

    if-gtz v5, :cond_7

    :goto_5
    return-void

    :cond_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    goto/16 :goto_1

    :cond_5
    sget v3, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v5, v6

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    :cond_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v3, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_6
    invoke-direct {v4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    move v4, v2

    :goto_7
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v4, v3, :cond_f

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v3, v6, :cond_b

    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    :cond_a
    move v0, v9

    goto :goto_6

    :cond_b
    invoke-interface {v1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_c

    const-string v3, ""

    :cond_c
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    sget-object v7, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v7, v8, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    goto :goto_8

    :cond_d
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    if-gt v3, v6, :cond_e

    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    goto :goto_8

    :cond_e
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aput-object v12, v3, v4

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-nez v0, :cond_10

    new-array v0, v11, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    :cond_10
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    :goto_9
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v2, v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    :cond_12
    :goto_a
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_a

    :cond_14
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-ne v0, v9, :cond_12

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_a

    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    goto :goto_a

    :cond_16
    iput-object v12, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    goto :goto_a

    :cond_17
    move v0, v2

    goto/16 :goto_2
.end method

.method private calculateMainTextText()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    :cond_0
    sget v1, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    return-void
.end method

.method private getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "\\\\|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, "\\\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    const-string v2, "\\\\?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "\\\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\["

    const-string v2, "\\\\["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\]"

    const-string v2, "\\\\]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{"

    const-string v2, "\\\\{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\}"

    const-string v2, "\\\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\("

    const-string v2, "\\\\("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, "\\\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\^"

    const-string v2, "\\\\^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$"

    const-string v2, "\\\\\\$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const v6, 0x7f020268

    const v3, 0x7f0201f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRightDark:I

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleTiny:I

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleSmall:I

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleNormal:I

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleLarge:I

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleHuge:I

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadWhiteTheme:I

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadWhiteTheme:I

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightWhiteTheme:I

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityWhiteTheme:I

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityWhiteTheme:I

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const v1, 0x7f0201f8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    const v1, 0x7f0200a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIconPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f020207

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    const v1, 0x7f020206

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    const v1, 0x7f0200ae

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020021

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020027

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02002a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f0200af

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    const v1, 0x7f0200b1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    const v1, 0x7f0200b0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    const v1, 0x7f0200b2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f02029f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    const v1, 0x7f0200b5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f0201fd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    const v1, 0x7f0200c0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f0200ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    const v1, 0x7f0200bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f0200bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    const v1, 0x7f0200bd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    const v1, 0x7f020284

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f0200c4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f0200c2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f0200c1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    const v1, 0x7f020314

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    const v1, 0x7f020127

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f020325

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    const v1, 0x7f0201eb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f0201e5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02008f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadDarkTheme:I

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadDarkTheme:I

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightDarkTheme:I

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightDarkTheme:I

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightDarkTheme:I

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityDarkTheme:I

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityDarkTheme:I

    const v1, 0x7f02004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02004f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020051

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f0201ec

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    const v1, 0x7f02004a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    const v1, 0x7f02007c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    :cond_0
    sput-boolean v5, Lcom/android/email/activity/MessageListItem;->sInit:Z

    :cond_1
    return-void
.end method

.method private setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-nez p2, :cond_1

    const-string v0, ""

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageListItem;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_6

    :goto_2
    move v2, v3

    move v4, v3

    :goto_3
    array-length v5, v0

    if-ge v2, v5, :cond_2

    new-instance v5, Lcom/android/email/activity/MessageListItem$SearchItem;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageListItem$SearchItem;-><init>(Lcom/android/email/activity/MessageListItem;)V

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v5, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move v4, v3

    move v5, v3

    :goto_4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    :cond_3
    :goto_5
    return-object p1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput-object v6, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int v2, v5, v0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private setLocalVariable()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    :goto_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_b

    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextReadOpacity:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextUnreadOpacity:I

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_10

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    :goto_4
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_24

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_20

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_2

    :cond_0
    :goto_5
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_1f

    :cond_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    :goto_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    :cond_2
    :goto_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_3

    :cond_3
    :goto_8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_23

    :cond_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    :cond_5
    :goto_9
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_27

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    :cond_6
    :goto_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_28

    :cond_7
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    :cond_8
    :goto_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :pswitch_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    :pswitch_1
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    :pswitch_2
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    :pswitch_3
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    :pswitch_4
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_b
    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextReadOpacity:I

    sget v0, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextUnreadOpacity:I

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_3

    :cond_f
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_10
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_13

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_12
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_13
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_15

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_15
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_16
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_18

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    :goto_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    :cond_17
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_c

    :cond_18
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_c

    :cond_19
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_1b

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    :goto_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    :cond_1a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_d

    :cond_1b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_d

    :cond_1c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    :goto_e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_1e

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :cond_1d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto :goto_e

    :cond_1e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    :pswitch_9
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :pswitch_a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :pswitch_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_1f
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_6

    :cond_20
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v0, :pswitch_data_4

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :pswitch_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :pswitch_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_21
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_7

    :cond_22
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_7

    :pswitch_e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :pswitch_f
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :pswitch_10
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :cond_23
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_9

    :cond_24
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_25
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    :goto_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_26
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto :goto_f

    :cond_27
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    :cond_28
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

    :cond_29
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_2c

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    :cond_2a
    :goto_10
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_2d

    :cond_2b
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

    :cond_2c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_2a

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    goto :goto_10

    :cond_2d
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gtz p3, :cond_1

    move v3, v0

    :goto_0
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    sget v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    add-int v5, v0, v2

    sub-int v1, v4, v5

    int-to-float v4, v1

    int-to-float v5, p4

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sub-int v4, v1, v2

    sput v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    :cond_0
    return-void

    :cond_1
    move v3, p3

    goto :goto_0
.end method

.method ResetIconStack()V
    .locals 2

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    :goto_0
    sub-int v0, v1, v0

    sput v0, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    return-void

    :cond_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    goto :goto_0
.end method

.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->updateBackground()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessagesAdapter$Callback;->dropItemsFinish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->setLocalVariable()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->ResetIconStack()V

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v11

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_38

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    add-int/2addr v2, v7

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget v4, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    move-object v1, v0

    :goto_2
    if-eqz v8, :cond_19

    sget v0, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_3
    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    add-int v12, v0, v1

    if-eqz v8, :cond_1a

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    move v9, v0

    :goto_4
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_5
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    :goto_5
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateMainTextText()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v12

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_8
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    move v10, v0

    :goto_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_1c

    :cond_9
    if-nez v11, :cond_21

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1d

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v3

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_7
    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    add-int/2addr v0, v12

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    add-int v11, v0, v1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_24

    if-eqz v8, :cond_23

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    :goto_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_a
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    move v10, v0

    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_28

    :cond_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v1, v0

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v12, v0

    if-eqz v8, :cond_29

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v2

    :goto_c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2a

    add-int/2addr v0, v7

    move v8, v0

    :goto_d
    add-int v0, v11, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    add-int/2addr v1, v0

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v13

    const/4 v0, 0x0

    move v9, v0

    move v10, v1

    :goto_e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v9, v0, :cond_c

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    if-ge v9, v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-nez v0, :cond_2b

    :cond_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    sub-int v4, v1, v2

    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v4

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_d

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_d
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v2, v2, -0xa

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput v7, v6, Landroid/graphics/Rect;->left:I

    :cond_e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v6, Landroid/graphics/Rect;->top:I

    :cond_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    :cond_11
    :goto_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_12
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    const/high16 v4, 0x4040

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    const/4 v0, 0x1

    :goto_11
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    if-eqz v0, :cond_34

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_14
    :goto_12
    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_15
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_35

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_16
    :goto_13
    return-void

    :cond_17
    const/4 v0, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    move-object v1, v0

    goto/16 :goto_2

    :cond_19
    add-int v0, v2, v7

    int-to-float v0, v0

    goto/16 :goto_3

    :cond_1a
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    move v9, v0

    goto/16 :goto_4

    :cond_1b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    int-to-float v5, v12

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_6

    :cond_1d
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    goto/16 :goto_7

    :cond_1e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-nez v0, :cond_a

    :cond_1f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_20

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v3

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_14
    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_20
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    goto :goto_14

    :cond_21
    if-eqz v11, :cond_a

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_22
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_23
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    goto/16 :goto_9

    :cond_24
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_26

    if-eqz v8, :cond_25

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    :goto_15
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_25
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    goto :goto_15

    :cond_26
    if-eqz v8, :cond_27

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    move v9, v0

    :goto_16
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_27
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    move v9, v0

    goto :goto_16

    :cond_28
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_b

    :cond_29
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    goto/16 :goto_c

    :cond_2a
    move v8, v0

    goto/16 :goto_d

    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v1, v0, v9

    if-eqz v1, :cond_37

    const/4 v2, 0x0

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v8

    int-to-float v5, v10

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    move v11, v0

    :goto_17
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2c

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_2d

    :cond_2c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    add-int/2addr v0, v12

    add-int v1, v10, v0

    :goto_18
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v10, v1

    goto/16 :goto_e

    :cond_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    int-to-float v5, v10

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_17

    :cond_2e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_19
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_2f
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    :cond_30
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    :cond_31
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    :cond_32
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    :cond_33
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_34
    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_12

    :cond_35
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_13

    :cond_36
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_13

    :cond_37
    move v1, v10

    goto/16 :goto_18

    :cond_38
    move v7, v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListItem;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_2

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_3
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_4

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_5

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_5
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_6

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_6
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_7

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_8

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_8
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_9

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_9
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_a

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_b

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_b
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_c

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_d

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_d
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_e

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_f

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_f
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_10

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    :cond_10
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    add-int/2addr v2, v0

    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    :goto_0
    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/lit8 v7, v7, -0xa

    iget v8, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    iget-object v9, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    :goto_2
    return v0

    :cond_1
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    move v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_1
    if-ge v4, v2, :cond_2

    if-gt v4, v0, :cond_3

    :cond_2
    if-le v4, v6, :cond_0

    if-ge v5, v8, :cond_0

    if-le v5, v7, :cond_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-ge v4, v2, :cond_8

    if-le v4, v0, :cond_8

    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, v3, p0}, Lcom/android/email/activity/MessagesAdapter$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V

    move v0, v3

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    move v0, v1

    goto :goto_1

    :pswitch_3
    iget-boolean v9, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-nez v9, :cond_0

    if-ge v4, v2, :cond_4

    if-le v4, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;I)V

    move v0, v3

    goto :goto_1

    :cond_4
    if-le v4, v6, :cond_0

    if-ge v5, v8, :cond_0

    if-le v5, v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v2, :pswitch_data_1

    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2, p0, v0}, Lcom/android/email/activity/MessagesAdapter;->updateFollowUpFlag(Lcom/android/email/activity/MessageListItem;I)V

    move v0, v1

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_3

    :pswitch_5
    move v0, v1

    goto :goto_3

    :pswitch_6
    move v0, v3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, p0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    move v0, v3

    goto :goto_1

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method updateBackground()V
    .locals 7

    const v6, 0x7f020236

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    if-ne v3, v0, :cond_d

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    if-ge v3, v2, :cond_4

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    if-eqz v3, :cond_2

    :cond_1
    packed-switch v0, :pswitch_data_0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_21

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    goto :goto_0

    :cond_6
    const/16 v0, 0xa

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_a

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_0

    :cond_8
    const/16 v0, 0xc

    goto :goto_0

    :cond_9
    const/16 v0, 0xd

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xe

    goto :goto_0

    :cond_b
    const/16 v0, 0xf

    goto :goto_0

    :cond_c
    const/16 v0, 0x10

    goto :goto_0

    :cond_d
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    move v0, v2

    goto :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x4

    goto/16 :goto_0

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_1
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_13

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_14

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_4
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_15
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_5
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_6
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_7
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_18

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_a
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_b
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_c
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_d
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_e
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_1f
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_f
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_21
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
