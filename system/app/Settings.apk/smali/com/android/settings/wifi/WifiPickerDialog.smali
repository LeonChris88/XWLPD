.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    const v0, 0x7f0b023d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerDialog;->setTitle(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :cond_0
    return-void
.end method
