.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public disableAllButton()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040019

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-boolean v1, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Inflate End call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-boolean v6, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "limited_service_state_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_2
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    packed-switch v1, :pswitch_data_0

    sget-boolean v6, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "EndCallButtonsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick: unexpected click: View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    const/4 v3, 0x0

    const-string v6, "limited_service_state_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "CALL_END"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_1
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.phone.videocall"

    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "sms"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v5, :cond_3

    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "phone"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v5, :cond_3

    const-string v6, "roaming_auto_dial_for_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "phone"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "phone_type"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090094
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v8, 0x1

    :goto_3
    if-nez v11, :cond_d

    const/4 v7, 0x1

    :goto_4
    if-nez v11, :cond_e

    const/4 v6, 0x1

    :goto_5
    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    const-string v3, "20"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_pcw_enabled"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_f

    const-string v17, "20"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    sget-boolean v17, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v17, :cond_2

    const-string v17, "EndCallButtonsView : LOCK_PCW_ENABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v8, :cond_12

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v7, :cond_13

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v6, :cond_14

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v5, :cond_15

    const/16 v17, 0x0

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    const-string v17, "limited_service_state_for_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v2, ""

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "disable"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    :goto_b
    return-void

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const v17, 0x7f090099

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EndCallButtonsViewLand;->initialize()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    goto/16 :goto_2

    :cond_b
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected phone type: isContactExist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_f
    sget v17, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    sget v17, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    instance-of v0, v14, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v10, v14

    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    if-nez v11, :cond_10

    iget-boolean v0, v10, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    const/4 v5, 0x1

    :goto_c
    goto/16 :goto_6

    :cond_10
    const/4 v5, 0x0

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_15
    const/16 v17, 0x4

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_17
    sget-boolean v17, Lcom/android/phone/EndCallButtonsView;->DBG:Z

    if-eqz v17, :cond_5

    const-string v17, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_b
.end method
