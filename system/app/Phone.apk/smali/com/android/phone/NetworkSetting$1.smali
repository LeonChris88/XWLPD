.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;)V

    return-void
.end method
