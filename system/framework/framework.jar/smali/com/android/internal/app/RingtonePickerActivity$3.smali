.class Lcom/android/internal/app/RingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$3;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$3;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$200(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method
