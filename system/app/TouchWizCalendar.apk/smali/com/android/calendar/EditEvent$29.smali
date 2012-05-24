.class Lcom/android/calendar/EditEvent$29;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$check_account:Landroid/widget/CheckBox;

.field final synthetic val$check_box:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$29;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$29;->val$check_account:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$29;->val$check_box:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/calendar/EditEvent$29;->val$check_account:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "authorities"

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "authorities"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.android.calendar"

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/calendar/EditEvent$29;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4, v2}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v4, p0, Lcom/android/calendar/EditEvent$29;->val$check_box:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/calendar/EditEvent$29;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "preferences_confirm_new_event_google"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v4, p0, Lcom/android/calendar/EditEvent$29;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4, v8}, Lcom/android/calendar/EditEvent;->access$4202(Lcom/android/calendar/EditEvent;Z)Z

    return-void
.end method
