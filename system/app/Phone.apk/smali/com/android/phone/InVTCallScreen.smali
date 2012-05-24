.class public Lcom/android/phone/InVTCallScreen;
.super Landroid/app/Activity;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallScreen$61;,
        Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;,
        Lcom/android/phone/InVTCallScreen$BrightZoomTimer;,
        Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field protected static disconnectDueToLowBattery:Z

.field private static farend_pressed:Z

.field private static isVTManagerAlreadyStarted:Z

.field private static mBackPressed:Z

.field private static mHomePressed:Z

.field protected static mImageSelectedFromGalary:Landroid/net/Uri;

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field protected static mVideoSelectedFromGalary:Landroid/net/Uri;

.field private static mXMoveStart:I

.field private static mYMoveStart:I

.field private static nearend_pressed:Z


# instance fields
.field private final COUNTDOWN_INTERVAL:I

.field private CallStopLayoutImage:Landroid/widget/LinearLayout;

.field private final DURINGCALL:I

.field private final DURINGCALL_LOCK:I

.field private final DURINGCALL_UNLOCK:I

.field private final INCOMING_CALL:I

.field private final INCOMING_LOCK:I

.field private final INCOMING_UNLOCK:I

.field private ImgProj:[Ljava/lang/String;

.field private KeyGuard:Z

.field private final MILLIS_IN_FUTURE:I

.field private final OUTGOING_CALL:I

.field private final OUTGOING_LOCK:I

.field private final OUTGOING_UNLOCK:I

.field private final PROGRESS_MAX:I

.field private SeekBarLayout:Landroid/widget/LinearLayout;

.field private VideoProj:[Ljava/lang/String;

.field private bLowBat:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

.field private dialpadLayout:Landroid/widget/LinearLayout;

.field private disconnectMsg:Landroid/os/Message;

.field private duringEndCalllayout:Landroid/widget/LinearLayout;

.field private farEndImage:Landroid/widget/ImageView;

.field protected far_endsurhldr:Landroid/view/SurfaceHolder;

.field protected far_endsurview:Landroid/view/SurfaceView;

.field private filePath:Ljava/lang/String;

.field protected incomingContactImage:Landroid/widget/ImageView;

.field private isCallConnected:Z

.field public isCameraStarted:Z

.field private isCaptureFarEnd:Z

.field private isFarEndCapture:Z

.field private isFarEndRecord:Z

.field private isFrontCameraEnabled:Z

.field private isMO_Disconnect:Z

.field private isNearEndRecord:Z

.field private isPresetImageEnabled:Z

.field private isPresetImageSelectedFromOption:Z

.field private isSurfaceViewSwipe:Z

.field public isSwitchCameraClicked:Z

.field private isVTCallAlreadyStop:Z

.field private isWXGADevice:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuxiDialogCameraPopup:Z

.field private mAuxiDialogList:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBeforeMakingCall:Z

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mBirthdayIcon:Landroid/widget/ImageView;

.field private mBirthdayLayout:Landroid/widget/LinearLayout;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBlurPosition:I

.field private mBlur_Off:Z

.field protected mBrightSB:Landroid/widget/SeekBar;

.field mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightSBPosition:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCalendarIcon:Landroid/widget/ImageView;

.field private mCalendarInfo:Landroid/widget/TextView;

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCallEndTime:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimer:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCallerUppos:[Ljava/lang/String;

.field private mCancel:Landroid/view/MenuItem;

.field private mCapture:Landroid/view/MenuItem;

.field private mCaptureButton:Landroid/widget/Button;

.field private mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContextMenuDailog:Landroid/app/Dialog;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field mCreateButton:Landroid/widget/Button;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDesableOutGoingMenu:Z

.field private final mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field public mDialerEditText:Landroid/widget/EditText;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDialogVoiceCall:Landroid/app/Dialog;

.field private mDisp_Small:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field private mEndCall:Landroid/widget/Button;

.field private mEndCallButtonFrame:Landroid/view/View;

.field private mEndCallDisabled:Landroid/widget/Button;

.field protected mFaceBookIcon:Landroid/widget/ImageView;

.field private mFaceBookStatus:Landroid/widget/TextView;

.field private mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

.field private mFarEndRecordStopped:I

.field private mFirstFarEndViewClicked:Z

.field private mFirstNearEndViewClicked:Z

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHide:Landroid/widget/Button;

.field private mHideCheck:Z

.field private mHideDialPad:Landroid/widget/Button;

.field private mHideMe:Landroid/view/MenuItem;

.field protected mImageCaptureAnimationImageView:Landroid/widget/ImageView;

.field private mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field private mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsBatteryLow:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsShowMenu:Z

.field private mIsplayVideo:Z

.field private mKeyLockStatus:I

.field private mKeyPad:Landroid/view/MenuItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLowMemoryStopRecording:Z

.field private mMenuSelected:I

.field protected mMinusBright:Landroid/widget/ImageView;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMute:Landroid/widget/ToggleButton;

.field private mNearEndRecordStopped:I

.field private mNeedShowCallLostDialog:Z

.field private mOrientation:I

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mOutImg:Landroid/view/MenuItem;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPlusBright:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderOverlayVisible:Z

.field private mRP:Landroid/app/enterprise/RestrictionPolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordFarEndView:Landroid/widget/ImageView;

.field protected mRecordNearEndView:Landroid/widget/ImageView;

.field private mRecordTimeFarEnd:J

.field private mRecordTimeNearEnd:J

.field private mRecord_stop:Z

.field private mRecording:Landroid/view/MenuItem;

.field private mRecordingAlert:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSC:Landroid/widget/Button;

.field private final mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field mSaveButtonFrame:Landroid/view/View;

.field private mSeekBarSelection:I

.field mSendMsgButton:Landroid/widget/Button;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowMe:Landroid/view/MenuItem;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeaker:Landroid/view/MenuItem;

.field private mStartRecordingButton:Landroid/widget/Button;

.field private mStop:Landroid/view/MenuItem;

.field private mStopRecording:Landroid/widget/Button;

.field private mSuccessToastNotRequired:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchHDSet:Landroid/view/MenuItem;

.field private mSwitchPHSet:Landroid/view/MenuItem;

.field private mSwitchRecording:I

.field private mToast:Landroid/widget/Toast;

.field private mToastExecuteOnceForDevicePolicyManager:Z

.field mUpdateButton:Landroid/widget/Button;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mVTManager:Lsiso/vt/VTManager;

.field private mVTStatusText:Landroid/widget/TextView;

.field private mVTcalltype:I

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallType:Z

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoRecordTime:Landroid/widget/TextView;

.field private mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeNearEnd:Landroid/widget/TextView;

.field private mVideofilePath:Ljava/lang/String;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMessage:Ljava/lang/String;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field protected mZoomSB:Landroid/widget/SeekBar;

.field private mZoomSBPosition:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private muteFrame:Landroid/widget/FrameLayout;

.field myListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private nearEndImage:Landroid/widget/ImageView;

.field nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field protected near_endsurhldr:Landroid/view/SurfaceHolder;

.field protected near_endsurview:Landroid/view/SurfaceView;

.field private nvBottomYPos:I

.field private nvTopYPos:I

.field protected outgoingContactImage:Landroid/widget/ImageView;

.field private phoneForCallNumber:Ljava/lang/String;

.field private previousFilePath:Ljava/lang/String;

.field private previousSelectedType:I

.field private rightVerticalLayout:Landroid/widget/LinearLayout;

.field private sdcardState:Ljava/lang/String;

.field private selectImg:Z

.field private selectVideo:Z

.field private showcamera:Z

.field private stopRecordingLayout:Landroid/widget/LinearLayout;

.field private svBottomYPos:I

.field private svTopYPos:I

.field private timerHandler:Landroid/os/Handler;

.field whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

.field whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    sput-object v2, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    sput-object v2, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->farend_pressed:Z

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    sput v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    sput v0, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    sput v0, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallAnimationDuration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->MILLIS_IN_FUTURE:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->COUNTDOWN_INTERVAL:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->PROGRESS_MAX:I

    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mPauseInProgress:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

    iput v4, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_CALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_CALL:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_LOCK:I

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_UNLOCK:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_LOCK:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_UNLOCK:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_LOCK:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_UNLOCK:I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->CallStopLayoutImage:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mZoomSBPosition:I

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoPlayer:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mZoomSB:Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->sdcardState:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I

    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoFileName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/phone/InVTCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$1;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/InVTCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$2;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/InVTCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$3;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/InVTCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$4;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/InVTCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$5;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    new-instance v0, Lcom/android/phone/InVTCallScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$6;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/InVTCallScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$7;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    new-instance v0, Lcom/android/phone/InVTCallScreen$31;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$31;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/android/phone/InVTCallScreen$32;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$32;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCaptureFarEnd:Z

    new-instance v0, Lcom/android/phone/InVTCallScreen$57;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$57;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    new-instance v0, Lcom/android/phone/InVTCallScreen$60;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$60;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 0

    return-void
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 9

    const v7, 0x7f0e02ec

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    move-object v1, v2

    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e02f1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    new-instance v0, Lcom/android/phone/InVTCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$25;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v1, v3

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private GetValidFileName(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return v0
.end method

.method static synthetic access$10102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    return v0
.end method

.method static synthetic access$10702(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    return p1
.end method

.method static synthetic access$10800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I

    return v0
.end method

.method static synthetic access$10900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I

    return v0
.end method

.method static synthetic access$11100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->contextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$11502(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return p1
.end method

.method static synthetic access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->brightOwnImage()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->switchCamera()V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$12102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$12108(Lcom/android/phone/InVTCallScreen;)I
    .locals 2

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$12200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    return-void
.end method

.method static synthetic access$2002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/phone/InVTCallScreen;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    return-void
.end method

.method static synthetic access$6302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showRadioOnDialog()V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    return v0
.end method

.method static synthetic access$7400()I
    .locals 1

    sget v0, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    return v0
.end method

.method static synthetic access$7402(I)I
    .locals 0

    sput p0, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    return p0
.end method

.method static synthetic access$7500()I
    .locals 1

    sget v0, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return v0
.end method

.method static synthetic access$7502(I)I
    .locals 0

    sput p0, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return p0
.end method

.method static synthetic access$7600()I
    .locals 1

    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$7602(I)I
    .locals 0

    sput p0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return p0
.end method

.method static synthetic access$7608()I
    .locals 2

    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$7700()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return v0
.end method

.method static synthetic access$7702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return p0
.end method

.method static synthetic access$7800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return v0
.end method

.method static synthetic access$7802(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return p1
.end method

.method static synthetic access$7900(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return v0
.end method

.method static synthetic access$7902(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    return p0
.end method

.method static synthetic access$8800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    :cond_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "bailOutAfterErrorDialog(): end InVTCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    return-void

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "/sys/class/power_supply/battery/charging_source"

    const/16 v2, 0xa

    new-array v5, v2, [B

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "batteryCheck !!!"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v4, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_2
    :goto_1
    if-nez v4, :cond_7

    :cond_3
    :goto_2
    return v0

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_3
    :try_start_2
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "charging_source FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "batteryCheck : read in length is 0.."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Charging source is a battery"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    move v2, v1

    move v3, v1

    :goto_5
    const/4 v4, 0x5

    if-ge v2, v4, :cond_a

    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getVoltage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_1
    move-exception v2

    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "IOException error"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0014

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int/lit8 v3, v3, 0x5

    if-gt v3, v2, :cond_c

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Low battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_b
    move v0, v1

    goto/16 :goto_2

    :cond_c
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "It\'s an enough battery to use a VT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Charging source is a TA or USB"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto/16 :goto_3

    :cond_e
    move v2, v1

    goto/16 :goto_0
.end method

.method private brightOwnImage()V
    .locals 3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside brightOwnImage and brightening by factor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private button_initialize()V
    .locals 8

    const/4 v5, -0x1

    const v3, 0x7f0900b8

    const v2, 0x7f0900b7

    const/4 v7, 0x0

    const/4 v4, 0x4

    const-string v0, "InVTCallScreen"

    const-string v1, "Enter button_initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit button_initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setRingingCallFrameAni()V

    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e032d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f09017e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v2, :cond_2

    const-string v2, "display_calendar_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->GetMeeting(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f020154

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    const-string v2, "display_sns_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "display_birthday_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2, p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    :cond_4
    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v1, "Incomming Lock Screen Draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, v7}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    :sswitch_1
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_8

    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    const-string v0, "InVTCallScreen"

    const-string v1, "In Locked outgoing condn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v2, :cond_a

    const-string v2, "display_calendar_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->GetMeeting(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_11

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f020154

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    const-string v2, "display_sns_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "display_birthday_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    iget-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2, p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const-string v0, "InVTCallScreen"

    const-string v1, "In unLocked outgoing condn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    :cond_d
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0e030d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    :cond_f
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_3

    :cond_11
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :sswitch_2
    iput v7, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    const-string v0, "InVTCallScreen"

    const-string v1, "In DURINGCALL condn button initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const v0, 0x7f090174

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    const v0, 0x7f0900c9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1a

    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    :cond_12
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    :cond_13
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_17
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    :cond_19
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit DURINGCALL condn button initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method private cancelRecordingFarEndView()V
    .locals 3

    const/16 v2, 0x7e

    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const v0, 0x7f0e0352

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method private cancelRecordingNearEndView()V
    .locals 2

    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingNearEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private capture_farend_view(J)V
    .locals 7

    const/16 v6, 0x7e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_farend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0e032a

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture File Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    const-string v0, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$59;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$59;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private capture_nearend_view(J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_nearend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$58;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$58;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private changeImgSize(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside ChangeImage for Caller Image with Small size -- "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside ChangeImage for Caller Image with Large size --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16b

    const/16 v3, 0x110

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1b4

    const/16 v3, 0x146

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForCleanupState()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-string v4, "InVTCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory Size Avialable is in Kb : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private checkWXGADevice()Z
    .locals 5

    const/16 v4, 0x500

    const/4 v0, 0x1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_0

    if-ne v1, v4, :cond_0

    const-string v1, "InVTCallScreen"

    const-string v2, "This is WXGA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    if-ne v2, v4, :cond_1

    const-string v1, "InVTCallScreen"

    const-string v2, "This is WXGA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private contextMenuSelected(I)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "In CallVtScreen contextMenuSelected method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-object v2, v1, p1

    const v3, 0x7f0e031b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v2, v1, p1

    const v3, 0x7f0e031c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_4

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    const v3, 0x7f0e031d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v9, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0e031e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v5}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    :cond_5
    aget-object v2, v1, p1

    const v3, 0x7f0e031d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v9, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    :cond_6
    aget-object v2, v1, p1

    const v3, 0x7f0e031e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v5}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    :cond_7
    aget-object v2, v1, p1

    const v3, 0x7f0e0320

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, v1, p1

    const v3, 0x7f0e0321

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    :cond_9
    aget-object v2, v1, p1

    const v3, 0x7f0e0322

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, v1, p1

    const v3, 0x7f0e0323

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    :cond_b
    aget-object v2, v1, p1

    const v3, 0x7f0e0324

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-nez v2, :cond_c

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside capture context menu selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    const-string v1, "Capture Image called for Farend view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto/16 :goto_0

    :cond_c
    aget-object v2, v1, p1

    const v3, 0x7f0e0325

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside record video for far end or near end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    :cond_e
    aget-object v2, v1, p1

    const v3, 0x7f0e0341

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "InVTCallScreen"

    const-string v1, "In image option item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    :cond_f
    aget-object v2, v1, p1

    const v3, 0x7f0e0342

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videoAlertShowNeverAgain"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "InVTCallScreen"

    const-string v1, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    :cond_11
    aget-object v2, v1, p1

    const v3, 0x7f0e0343

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v2, :cond_12

    const-string v0, "InVTCallScreen"

    const-string v1, "Capture Image called for Nearend view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    :cond_12
    aget-object v2, v1, p1

    const v3, 0x7f0e0344

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    goto/16 :goto_0

    :cond_13
    aget-object v2, v1, p1

    const v3, 0x7f0e0345

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "InVTCallScreen"

    const-string v1, "Preset Image is being called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    :cond_14
    aget-object v2, v1, p1

    const v3, 0x7f0e0346

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v0, "InVTCallScreen"

    const-string v1, "Show camera is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    const-string v0, "InVTCallScreen"

    const-string v1, "Calling surfaceview_init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    :cond_15
    aget-object v2, v1, p1

    const v3, 0x7f0e031a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_16
    aget-object v1, v1, p1

    const v2, 0x7f0e0316

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    :cond_17
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1
.end method

.method private continueOnDisconnection()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    return-void
.end method

.method private createDefaultImages()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v0, 0x7f02038c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v4, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_call_recording_start.jpg"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_1
    const v0, 0x7f020389

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video_call_capture.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 4

    const/16 v3, 0x6c

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InVTCallScreen"

    const-string v1, "delayedCleanupAfterDisconnect(): remove unnecessary messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "After internalHangup call the calllog -Exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    :cond_4
    :goto_0
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private disableControls()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "Disable the Controls during Disconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_d

    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    :cond_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method private dismissContextDailogBox()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 4

    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableHideMeState()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "photo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableHideMeState ::preset_Name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    :goto_0
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    return-void

    :cond_2
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_7

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "enableHideMeState ::preset_Name is video"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_video_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v5, "enableHideMeState :: video path is null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    const-string v5, "enableHideMeState :: video Uri for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v5, "enableHideMeState :: uri String for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v5, "enableHideMeState ::preset_Name is Null "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillMenuArrayList()V
    .locals 9

    const v8, 0x7f0e0341

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0e0324

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0325

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0e031a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0316

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0343

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0342

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0e0345

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const v3, 0x7f0e0325

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0342

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0345

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0345

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0342

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    return-void
.end method

.method private formatTimeString(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v11, 0xe10

    const-wide/16 v9, 0x3c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "%%0%dd"

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    new-array v3, v8, [Ljava/lang/Object;

    rem-long v4, v1, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    rem-long v5, v1, v11

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    div-long/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside getVideoFileNameFromUri condition and file Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getVideoFileNameFromUri condition and file path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_0
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/sys/class/power_supply/battery/capacity"

    const/4 v3, 0x0

    const/16 v7, 0xa

    new-array v1, v7, [B

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move-object v3, v4

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x1

    invoke-direct {v6, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    :cond_1
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoltage value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    return-object v6

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    :cond_1
    :goto_0
    return v5

    :cond_2
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_a

    if-eqz v0, :cond_6

    const-string v0, "InVTCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_9

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_9
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    sget-object v2, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V
    .locals 5

    const v4, 0x7f0e01aa

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError: unexpected status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    :cond_2
    return-void

    :pswitch_1
    const v0, 0x7f0e01a5

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EMERGENCY_ONLY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    const v0, 0x7f0e01a6

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    :pswitch_3
    const-string v0, "InVTCallScreen"

    const-string v1, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e01a9

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4

    const v0, 0x7f0e01ab

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    goto :goto_0

    :cond_5
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f0e0349

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method private hideEndcallbuttonlayout()V
    .locals 3

    const-string v0, "InVTCallScreen"

    const-string v1, "Inside hideEndcallbuttonlayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of duringEndCalllayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of SeekBarLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Outside hideEndcallbuttonlayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private imageCaptureAnimation()V
    .locals 2

    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation() :: Inside capture image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation : : capturing near end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->prepareCaptureAnimation()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation : : capturing far end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private initInVTCallScreen()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInVTCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside initInVTCallScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_1

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    :cond_3
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit initInVTCallScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtoutgoing_main_unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtoutgoing_main_unlock : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtincoming_main_lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtincoming_main_lock : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtduringcall_main"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "In vtduringcall_main : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    const-string v0, "After SurfaceView_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setupDTMFDialer()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDialerSession()V

    const-string v0, "After Button_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    const-string v0, "After StartVTCall "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initvtstack()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Init VT Stack get called "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    const-string v0, "Init VT Stack State Listener Registered"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Videocalltype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    if-ne v3, v0, :cond_1

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    :goto_0
    return-void

    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outgoing VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    goto :goto_0
.end method

.method private is2GNetwork()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently connected netwokr Tech. type is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchBrightSB(I)V
    .locals 6

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside launchBrightSB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->hideEndcallbuttonlayout()V

    new-instance v0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;-><init>(Lcom/android/phone/InVTCallScreen;JJ)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InVTCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBluetoothClick()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    const-string v0, "BT: turnOnSpeaker()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    const-string v0, "BT: connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14

    const/4 v13, 0x4

    const-wide/16 v11, 0x1194

    const/4 v3, 0x1

    const/16 v10, 0x6c

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    :goto_2
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v8}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v9, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v8, v9, :cond_6

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v9, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v8, v9, :cond_7

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getNetworkType()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "usecall_fail_option"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v8, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    :goto_4
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_56

    const-string v0, "InVTCallScreen"

    const-string v1, "In Foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const v0, 0x7f0e0349

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_a
    iget-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_b

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_b
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_e

    if-eqz v8, :cond_c

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    :cond_c
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_e
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_11

    if-eqz v8, :cond_f

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_f

    const v0, 0x7f0e032f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_f
    const v0, 0x7f0e034a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_11
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_14

    if-eqz v8, :cond_12

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_12

    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_12
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_14
    const-string v9, "XEC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_18

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_15

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_18

    :cond_15
    if-eqz v8, :cond_16

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0471

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e032e

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_16
    const v0, 0x7f0e0471

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_18
    const-string v9, "XEC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_1c

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_19

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_1c

    :cond_19
    if-eqz v8, :cond_1a

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0472

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e032e

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_1a
    const v0, 0x7f0e0472

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_1c
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_1f

    if-eqz v8, :cond_1d

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1d

    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_1d
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_1f
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_22

    if-eqz v8, :cond_20

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_20

    const v0, 0x7f0e0330

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_20
    const v0, 0x7f0e034b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_22
    iget-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-nez v9, :cond_25

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_25

    if-eqz v8, :cond_23

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_23

    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_23
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_25
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_2a

    :cond_26
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "onDisconnect: Call failed Voice call dialog shown"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_27
    if-eqz v8, :cond_28

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_28

    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_28
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_2a
    const-string v9, "VAU"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_2e

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_2e

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2b

    const-string v0, "onDisconnect: VAU sales code UAVAILABLE_CHANNEL."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2b
    if-eqz v8, :cond_2c

    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    :cond_2c
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_2e
    sget-boolean v8, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v8, :cond_2f

    const-string v8, "onDisconnect: do normal operation."

    invoke-direct {p0, v8}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2f
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_30

    const v0, 0x7f0e001a

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_30
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_31

    const v0, 0x7f0e0019

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_31
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_32

    const v0, 0x7f0e001b

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_32
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_33

    const v0, 0x7f0e001c

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_33
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_34

    const v0, 0x7f0e001d

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_34
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_35

    const-string v8, "XEC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v3, :cond_35

    const v0, 0x7f0e0027

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    :cond_35
    if-eqz v1, :cond_36

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    :cond_36
    :goto_5
    if-eqz v5, :cond_37

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_37
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_39

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_38

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_39

    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_39
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "emergency_call_retry_count"

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mShowCallLogAfterDisconnect:Z

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v0, :cond_3b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v0, :cond_3b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_47

    if-lez v1, :cond_47

    :cond_3b
    if-eqz v2, :cond_47

    :goto_8
    if-eqz v3, :cond_48

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3c

    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_3d

    if-lez v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    :cond_3d
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    :cond_3e
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v7, :cond_3f

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_36

    :cond_3f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_40

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    :cond_40
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    :cond_41
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_42

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_44

    :cond_42
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_43

    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    :cond_43
    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    :cond_44
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_45

    const v1, 0x7f0e000c

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_45
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_37

    const v1, 0x7f0e000d

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_46
    move v0, v4

    goto/16 :goto_7

    :cond_47
    move v3, v4

    goto/16 :goto_8

    :cond_48
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_49

    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_49
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    if-eqz v2, :cond_4b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_4a
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_52

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4c

    const-string v0, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4d

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    :cond_4e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_50

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4f

    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    :cond_50
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_52

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_51

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_51
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    :cond_52
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_54

    if-nez v2, :cond_54

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_53

    const-string v0, "onDisconnect: Call Collision case - staying on InVTCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_53
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    :cond_54
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_55

    const/16 v0, 0xdac

    :goto_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    :cond_55
    const/16 v0, 0xdac

    goto :goto_a

    :cond_56
    const-string v0, "InVTCallScreen"

    const-string v1, "In Background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_3
.end method

.method private onMMICancel()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onMMICancel: finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSpeakerClick()V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onSpeakerClick()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performBatteryLowProcess()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and phone is in use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and VT Already started, so calling stopVT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and VT not started so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and incomming call rejected so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and during or MO call rejected  so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v1, :cond_6

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_4

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempted to call emergency number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :cond_8
    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with non-emergency number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- failing call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_b

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v3, :cond_b

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency number detected, changing state to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_b
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v3, :cond_d

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v1, :cond_3

    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_d
    if-nez v2, :cond_f

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "The current connected network may not be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_f
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "The current connected network may be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1, v0}, Lcom/android/phone/PhoneUtils;->dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCall: unknown callStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_12
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_13
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareCaptureAnimation()V
    .locals 7

    const v6, 0x7f020390

    const v5, 0x7f02038f

    const v4, 0x7f02038e

    const/16 v3, 0x32

    const/16 v2, 0x64

    const-string v0, "InVTCallScreen"

    const-string v1, "prepareCaptureAnimation() :: Inside prepare image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-void
.end method

.method private registerBatteryListener()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerDevicePolicyManagerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    :cond_0
    return-void
.end method

.method private registerSDCardListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removesurfaceview()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "In removesurfaceview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "In  not null condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Out not null condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out removesurfaceview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private selectImageFromMyFiles()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "InVTCallScreen"

    const-string v1, "In selectImageFromMyFiles method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "External Media is present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private selectVideoFromMyFiles()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideoFromMyFiles method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "External Media is present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Out selectMyVideofile method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHideOrShowMeState()V
    .locals 5

    const v4, 0x7f0e030d

    const v3, 0x7f020365

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-nez v0, :cond_0

    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f020296

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0e030c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVTCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    :pswitch_1
    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setRingingCallFrameAni()V
    .locals 4

    const/16 v3, 0xc8

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-void
.end method

.method private setupDTMFDialer()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    :goto_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-nez v1, :cond_2

    const-string v1, "InVTCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    return-void

    :cond_1
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCallLostDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEndCallScreen(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    const v1, 0x7f0e0195

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    :cond_1
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 8

    const v7, 0x7f0e003d

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGenericErrorDialog(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0e01a5

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/phone/InVTCallScreen$14;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$14;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$15;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v3, Lcom/android/phone/InVTCallScreen$16;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$16;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v4, Lcom/android/phone/InVTCallScreen$17;

    invoke-direct {v4, p0}, Lcom/android/phone/InVTCallScreen$17;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e002f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0e02d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Lcom/android/phone/InVTCallScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$18;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v0, Lcom/android/phone/InVTCallScreen$19;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$19;-><init>(Lcom/android/phone/InVTCallScreen;)V

    :goto_1
    new-instance v3, Lcom/android/phone/InVTCallScreen$22;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$22;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/phone/InVTCallScreen$20;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$20;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v0, Lcom/android/phone/InVTCallScreen$21;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$21;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_1
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside showImage condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showRadioOnDialog()V
    .locals 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v0, Lcom/android/phone/InVTCallScreen$23;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$23;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$24;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0049

    new-instance v2, Lcom/android/phone/InVTCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$11;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InVTCallScreen$10;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e004a

    new-instance v2, Lcom/android/phone/InVTCallScreen$13;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$13;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e004b

    new-instance v2, Lcom/android/phone/InVTCallScreen$12;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$12;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private show_camera()V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "InVTCallScreen"

    const-string v1, "In show_camera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of selectImg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of selectVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    if-eqz v0, :cond_2

    const-string v0, "InVTCallScreen"

    const-string v1, "In selectImg condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out selectImg condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out show_camera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    if-eqz v0, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideo condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideo condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    goto :goto_1
.end method

.method private startFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0

    return-void
.end method

.method private startRecordingFarEndView()V
    .locals 5

    const/16 v4, 0x7e

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "Already Far End Recording in Process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startRecordingNearEndView()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "Already Far End Recording in Process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    const/4 v0, 0x5

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startToast(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "startToast : msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVTCall()V
    .locals 2

    const-string v0, "InVTCallScreen"

    const-string v1, "Before-StartVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v1, "StartVTCall is called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    :cond_0
    return-void
.end method

.method private stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0

    return-void
.end method

.method private stopRecordingFarEndView()V
    .locals 3

    const/16 v2, 0x7e

    const-string v0, "InVTCallScreen"

    const-string v1, "In stopRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopRecordingNearEndView(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUIForNearEnd()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->StopRecording(Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out stop_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVTCall()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "InVTCallScreen"

    const-string v1, "Before-StopVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->disableControls()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    const-string v0, "InVTCallScreen"

    const-string v1, "StopVTCall is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    :cond_3
    return-void
.end method

.method private surfaceview_initialize()V
    .locals 6

    const v5, 0x7f0900bf

    const v4, 0x7f0900bd

    const v3, 0x7f0900bc

    const/4 v2, 0x3

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$27;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/InVTCallScreen$28;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$28;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$29;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$29;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$30;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$30;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private swipeSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->SwipeSurface()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private switchCamera()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v3, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    goto :goto_0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    :cond_1
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dumpBluetoothState()V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v3, v4, :cond_4

    :cond_3
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    :goto_0
    return-object v3

    :cond_4
    if-ne v1, v0, :cond_7

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_8

    :cond_5
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_9
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    :cond_0
    return-void
.end method

.method private updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V
    .locals 5

    const v4, 0x7f0e0007

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    const-string v2, "InVTCallScreen"

    const-string v3, "updateDisplayForCaller()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info Avialable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_ALLOWED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_RESTRICTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_PAYPHONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 4

    const/16 v3, 0x32

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const-string v0, "00:00"

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v3, :cond_1

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEndCallButton()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "updateEndCallButton : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    goto :goto_0
.end method

.method private updateEndcallButtonState(Z)V
    .locals 11

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    :goto_0
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v1, 0x7f0e01aa

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    move v5, v2

    :goto_2
    if-nez v8, :cond_9

    move v4, v2

    :goto_3
    if-nez v8, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    const-string v9, "20"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_pcw_enabled"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v10, "20"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EndCallButtonsView : LOCK_PCW_ENABLED"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    move v0, v3

    move v1, v3

    move v4, v3

    move v5, v3

    :goto_5
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v7, :cond_e

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_11

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_12

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_9
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_5

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const v7, 0x7f020154

    invoke-static {v4, v5, v1, v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    :cond_4
    move-object v7, v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: isContactExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v5, v3

    goto/16 :goto_2

    :cond_9
    move v4, v3

    goto/16 :goto_3

    :cond_a
    move v1, v3

    goto/16 :goto_4

    :cond_b
    sget v9, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v0, v9, :cond_d

    sget v9, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v9, :cond_d

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    instance-of v7, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_14

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    if-nez v8, :cond_c

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_5

    :cond_c
    move v0, v3

    goto/16 :goto_5

    :cond_d
    move v0, v3

    move v1, v3

    move v4, v3

    move v5, v3

    goto/16 :goto_5

    :cond_e
    iget-object v7, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_f

    move v5, v2

    :goto_a
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_10

    move v4, v2

    :goto_b
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_f
    move v5, v3

    goto :goto_a

    :cond_10
    move v4, v3

    goto :goto_b

    :cond_11
    move v2, v3

    goto/16 :goto_7

    :cond_12
    move v3, v6

    goto/16 :goto_8

    :cond_13
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "EndCallButtonsView : connection is NullPointer at updateState"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    move v0, v3

    goto/16 :goto_5

    :cond_15
    move-object v7, v0

    goto/16 :goto_0
.end method

.method private updateInCallBackground()V
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x64

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :goto_1
    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v3, "updateInCallBackground :ACTIVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_3

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    :cond_3
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "InVTCallScreen"

    const-string v2, "Durring Call EarPhone is connected and switching off the speaker. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "InitVtCallScreen started because Activity is in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v9, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v9, :cond_8

    const-string v0, "InVTCallScreen"

    const-string v2, "PhoneUtils.isSpeakerOn(this) && mVTcalltype == OUTGOING_CALL. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    :cond_9
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "InitVtCallScreen not started because Activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    goto :goto_4

    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v2, "updateInCallBackground :DISCONNECTING"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "InVTCallScreen"

    const-string v1, "updateInCallBackground :DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    const-string v0, "InVTCallScreen"

    const-string v1, "updateInCallBackground :Timer Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :pswitch_3
    const-string v2, "case dialing"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const-string v2, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const v2, 0x7f0e0253

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    :cond_c
    :pswitch_4
    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateOwnImageStatus()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "own_video_receivedcall"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "updateOwnImageStatus:: Camera disabled due DPM  - INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    const-string v0, "UpdateOwnImageStatus : Setup Hide me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    const-string v0, "UpdateOwnImageStatus : Setup Show me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecordTime()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUIFarEnd(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUINearEnd(J)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_6

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_8

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_9

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updateScreen: error call state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-eq v1, v3, :cond_c

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_b

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    :cond_f
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    if-ne v1, v3, :cond_13

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSelectedImageFromGallery()V
    .locals 11

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype of image selected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v8, "InVTCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v4, v5

    if-lez v0, :cond_6

    const v4, 0x79ec00

    if-gt v0, v4, :cond_6

    move v0, v6

    :goto_0
    const-string v4, "image/pipeg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "image/jpeg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    if-nez v0, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v2, "Selected File is Jpeg."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    :cond_1
    :goto_1
    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of bitmap after decoding - VTPM_IMAGE_REQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v2, "Selected File is too large or not Jpeg."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e034d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    const v0, 0x7f0e033a

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_2

    :cond_6
    move v0, v7

    goto/16 :goto_0
.end method

.method private updateSelectedVideoFromGallery()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_2
    const v0, 0x7f0e033a

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStartRecordingUI()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "In startRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStartRecordingUIForNearEnd()V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateStopRecordingUI()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStopRecordingUIForNearEnd()V
    .locals 6

    const/4 v5, 0x4

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSwitchCameraButton(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    return-void
.end method

.method dismissMenu(Z)V
    .locals 4

    const/16 v3, 0x6f

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMenu(immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endInVTCallScreenSession()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInVTCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getNetworkType()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "GetNetworkType :NETWORK_TYPE_UNKNOWN"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "GetNetworkType :NETWORK_TYPE_GPRS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "GetNetworkType :NETWORK_TYPE_EDGE"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "GetNetworkType :NETWORK_TYPE_UMTS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSDPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSUPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "GetNetworkType :RADIO_TECHNOLOGY_IS95A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v1, "GetNetworkType :NETWORK_TYPE_CDMA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v1, "GetNetworkType :NETWORK_TYPE_1xRTT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_0"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void

    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangup()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onShowHideDialpad()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    const-string v0, "Merged"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->startToast(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090017 -> :sswitch_1
        0x7f090018 -> :sswitch_2
        0x7f0900ea -> :sswitch_0
        0x7f0900ef -> :sswitch_8
        0x7f0900f2 -> :sswitch_4
        0x7f0900f3 -> :sswitch_3
        0x7f0900f4 -> :sswitch_3
        0x7f0900f6 -> :sswitch_7
        0x7f0900f7 -> :sswitch_6
        0x7f0900f8 -> :sswitch_5
        0x7f09011f -> :sswitch_0
        0x7f090120 -> :sswitch_9
    .end sparse-switch
.end method

.method internalAnswerCall()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->startFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_1

    :cond_5
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalHangup()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    return-void
.end method

.method internalPhoneHangup()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    :cond_5
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_0

    :cond_7
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_9
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_b
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    :cond_c
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec ago)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msec ago)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    move v0, v1

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isBluetoothAvailable()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    :cond_6
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_5

    const-string v0, "BACK key: InVTCallScreenMode.MANAGE_CONFERENCE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "InVTCallScreen"

    const-string v1, "on Start Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto :goto_0

    :sswitch_1
    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Far End Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_3

    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Near End Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    :sswitch_3
    const-string v0, "InVTCallScreen"

    const-string v1, "on Cancel Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto :goto_0

    :sswitch_4
    const-string v0, "InVTCallScreen"

    const-string v1, "on Capture Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto :goto_0

    :sswitch_5
    const-string v0, "InVTCallScreen"

    const-string v1, "Hide Dialer Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :sswitch_6
    const-string v0, "InVTCallScreen"

    const-string v1, "In Voice call  button click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick:: Phone number to call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "In Video call  button click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick:: Phone number to call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.videocall"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_b
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "onClick: Endcall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_b
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :sswitch_c
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "InVTCallScreen"

    const-string v1, "In mute click condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto/16 :goto_0

    :sswitch_e
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "InVTCallScreen"

    const-string v1, "Show me Text is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v4}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const v0, 0x7f0e0253

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090094 -> :sswitch_9
        0x7f090095 -> :sswitch_a
        0x7f090096 -> :sswitch_6
        0x7f090097 -> :sswitch_7
        0x7f090098 -> :sswitch_8
        0x7f0900c6 -> :sswitch_c
        0x7f0900c7 -> :sswitch_2
        0x7f0900c9 -> :sswitch_d
        0x7f0900ca -> :sswitch_b
        0x7f0900cc -> :sswitch_f
        0x7f0900ce -> :sswitch_10
        0x7f0900d3 -> :sswitch_5
        0x7f0900d6 -> :sswitch_3
        0x7f0900e3 -> :sswitch_e
        0x7f090177 -> :sswitch_1
        0x7f090178 -> :sswitch_0
        0x7f090179 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "InVTCallScreen"

    const-string v1, "onConfigurationChanged event get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkWXGADevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Low battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->createDefaultImages()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    const/high16 v0, 0x8

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_4

    const/high16 v0, 0x48

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerBatteryListener()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerDevicePolicyManagerReceiver()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerSDCardListener()V

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mBluetoothHandsfree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerForPhoneStates()V

    if-nez p1, :cond_a

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): mInVTCallInitialStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_8

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): Bluetooth:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_9

    const-string v0, "InVTCallScreen"

    const-string v1, "onCreate: BluetoothAdapter.getDefaultAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1

    :cond_9
    const-string v0, "InVTCallScreen"

    const-string v1, "onCreate: mBluetoothHandsfree == null || mAdapter != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v0, "InVTCallScreen"

    const-string v1, "Else condition in icicle == null "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v4, 0x7f0e002f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const v6, 0x1080027

    const/4 v3, 0x1

    const-string v0, "InVTCallScreen"

    const-string v2, "In onCreateDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e033d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$34;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$34;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$33;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$33;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$35;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$35;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, v0, v7

    aput-object v2, v1, v7

    aget-object v0, v0, v3

    aput-object v0, v1, v3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/InVTCallScreen$37;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$37;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$36;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$36;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0e0312

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$38;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$38;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0336

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0334

    new-instance v2, Lcom/android/phone/InVTCallScreen$40;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$40;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0335

    new-instance v2, Lcom/android/phone/InVTCallScreen$39;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$39;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0353

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e034f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0334

    new-instance v2, Lcom/android/phone/InVTCallScreen$42;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$42;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f0

    new-instance v2, Lcom/android/phone/InVTCallScreen$41;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$41;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempPhoneNumber = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_5

    const-string v0, "InVTCallScreen"

    const-string v2, "Dialog not created due to number is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_4

    const-string v0, "InVTCallScreen"

    const-string v2, "Dialog not created due to getAddress is null and tempPhoneNumber is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    if-eqz v0, :cond_6

    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    new-instance v0, Lcom/android/phone/InVTCallScreen$43;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$43;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$44;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$44;-><init>(Lcom/android/phone/InVTCallScreen;)V

    :goto_5
    new-instance v3, Lcom/android/phone/InVTCallScreen$47;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/InVTCallScreen$47;-><init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0e0334

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0335

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/android/phone/InVTCallScreen$45;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$45;-><init>(Lcom/android/phone/InVTCallScreen;)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$46;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$46;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_5

    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e034c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$48;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$48;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "In OUTGOING_NEAR_DIALOG_LIST condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$49;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$49;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/android/phone/InVTCallScreen$50;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$50;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :pswitch_8
    const v0, 0x7f04000a

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x1020001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/phone/InVTCallScreen$51;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$51;-><init>(Lcom/android/phone/InVTCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0316

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e003d

    new-instance v3, Lcom/android/phone/InVTCallScreen$52;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$52;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$53;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$53;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e035c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e035b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$55;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$55;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$54;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$54;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$56;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$56;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_7
    move-object v0, v3

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "InVTCallScreen"

    const-string v1, "In onCreateOptionsMenu method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of mMenuSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x31

    const v1, 0x7f0e030c

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    const/16 v0, 0x32

    const v1, 0x7f0e0316

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0e0317

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0e0318

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0e0319

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const/16 v0, 0x41

    const v1, 0x7f0e0329

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCapture:Landroid/view/MenuItem;

    return v4
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "InVTCallScreen"

    const-string v2, "OnDestroy(): app.setInVTCallScreenInstance(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_7

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-ne v0, v4, :cond_1

    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_1

    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0
.end method

.method onDialerClose()V
    .locals 2

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    return-void
.end method

.method onDialerOpen()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 7

    const v6, 0x7f0201be

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/internal/telephony/Call;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v3, :cond_0

    const-string v1, "InVTCallScreen"

    const-string v2, "Incoming Contact Image is Avialable in contacts "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v1, "Contact Image is Not Avialable in contacts "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :goto_0
    :sswitch_1
    return v1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InVTCallScreen"

    const-string v2, "InVTCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_0

    const-string v0, "InVTCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "VOLUME key: silence ringer"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "----------- InVTCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    goto :goto_0

    :sswitch_6
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "----------- InVTCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    goto :goto_0

    :sswitch_7
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_2
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4c -> :sswitch_5
        0x52 -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "InVTCallScreen"

    const-string v1, "Inside onLongClick condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of widgetId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900ca
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_1

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent(): Bluetooth:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    const-string v0, "InVTCallScreen"

    const-string v1, "onNewIntent: BluetoothAdapter.getDefaultAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "onNewIntent: mBluetoothHandsfree == null || mAdapter != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const v0, 0x7f0e0253

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    :goto_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string v0, "InVTCallScreen"

    const-string v1, "launchin Zoom Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "launchin Brightness Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    :pswitch_8
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    :pswitch_9
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v6, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already Not open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->openDialer(Z)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "InVTCallScreen"

    const-string v1, "START_RECORDING_FAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "InVTCallScreen"

    const-string v1, "STOP_RECORDING_FAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "InVTCallScreen"

    const-string v1, "Cancel Recording is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "InVTCallScreen"

    const-string v1, "START_RECORDING_NEAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "InVTCallScreen"

    const-string v1, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "InVTCallScreen"

    const-string v1, "Cancel Recording is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_2
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InVTCallScreen$8;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$8;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_5

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->showCallView()V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/16 v7, 0x31

    const v6, 0x7f0e032b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "InVTCallScreen"

    const-string v1, "In onPrepareOptionsMenu "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/16 v0, 0x35

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    const/16 v0, 0x32

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x32

    const v1, 0x7f0e0316

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    const v1, 0x7f0202e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x33

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0e0317

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    const v1, 0x7f0202ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_6

    const-string v0, "InVTCallScreen"

    const-string v1, "Adding HIDE Me to Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f0e030c

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    const v1, 0x7f0202d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0e0319

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    const v1, 0x7f0202e5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_6
    const-string v0, "InVTCallScreen"

    const-string v1, "Adding SHOW Me to Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x3c

    const v1, 0x7f0e030d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    const v1, 0x7f0202dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_8
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0e0318

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    const v1, 0x7f0202e4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x43

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x45

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x44

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x40

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    const v1, 0x7f0e0328

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "InVTCallScreen"

    const-string v1, "In onPrepareOptionsMenu error in removing record options"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const/16 v0, 0x3e

    const v1, 0x7f0e0326

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x45

    const v1, 0x7f0e0328

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x43

    const v1, 0x7f0e0326

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_c
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete : additionalCallerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "display_sns_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v0, "display_birthday_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-wide v0, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v3, v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    const/16 v7, 0x70

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "onResume()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v4, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v4, :cond_b

    const-string v4, "onResume(): Dock Station is connected, UI set to Landscape "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    if-eqz v1, :cond_c

    const-string v4, "onResume(): Bluetooth is connected "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v4, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v4, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    :cond_3
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: initial status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v4, v5, :cond_d

    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: failure during startup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    :goto_3
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    :cond_6
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v2

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v2, v4, :cond_7

    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_e

    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-class v5, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    const-string v4, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    :cond_a
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v4, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v4, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_1

    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->hideCallView()V

    goto/16 :goto_0

    :cond_b
    const-string v4, "onResume(): Dock Station is connected, UI set to Portrait"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_1

    :cond_c
    const-string v4, "onResume(): Bluetooth is Not connected "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onStop()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSuppServiceFailed: while not in foreground, so return without doing anything."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e01ad

    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0e01b2

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0e01b3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->updateElapsedTimeWidget(J)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    const/16 v1, 0x72

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method requestUpdateDockUi()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateDockUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method requestUpdateTouchUi()V
    .locals 2

    const/16 v1, 0x7a

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2

    const/high16 v1, 0x40

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateRecordTimeUIFarEnd(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecordTimeUINearEnd(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
