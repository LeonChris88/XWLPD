.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->softkeyRun1(Landroid/view/View;)V

    return-void
.end method
