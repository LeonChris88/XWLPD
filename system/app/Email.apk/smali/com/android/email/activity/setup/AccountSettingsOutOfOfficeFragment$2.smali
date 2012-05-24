.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    goto :goto_0
.end method
