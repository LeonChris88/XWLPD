.class Lcom/android/phone/EmergencyCallbackModeService$3;
.super Landroid/os/CountDownTimer;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeService;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-static {v0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->access$102(Lcom/android/phone/EmergencyCallbackModeService;J)J

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-static {v0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->access$200(Lcom/android/phone/EmergencyCallbackModeService;J)V

    return-void
.end method
