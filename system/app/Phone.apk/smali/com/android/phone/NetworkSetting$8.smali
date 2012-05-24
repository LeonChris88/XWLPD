.class Lcom/android/phone/NetworkSetting$8;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, -0x2713

    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$1302(Lcom/android/phone/NetworkSetting;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1, v0}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    return-void
.end method
