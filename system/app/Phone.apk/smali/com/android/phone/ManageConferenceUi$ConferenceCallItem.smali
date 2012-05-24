.class Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;
.super Ljava/lang/Object;
.source "ManageConferenceUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceCallItem"
.end annotation


# instance fields
.field private conn:Lcom/android/internal/telephony/Connection;

.field private image:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUi;Lcom/android/internal/telephony/Connection;)V
    .locals 5

    const v4, 0x7f020154

    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->this$0:Lcom/android/phone/ManageConferenceUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v3, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    :cond_2
    invoke-static {p1}, Lcom/android/phone/ManageConferenceUi;->access$400(Lcom/android/phone/ManageConferenceUi;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0193

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    instance-of v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    :cond_4
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_5

    invoke-static {p1, v2}, Lcom/android/phone/ManageConferenceUi;->access$500(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2}, Lcom/android/phone/ManageConferenceUi;->access$500(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public endConnection()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDisconnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitConnection()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method
