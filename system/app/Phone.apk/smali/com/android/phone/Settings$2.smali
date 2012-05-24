.class Lcom/android/phone/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-static {v1}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/Settings;->access$202(Lcom/android/phone/Settings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
