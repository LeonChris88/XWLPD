.class Lcom/android/calendar/ImportVCalListActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImportVCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity$CancelListener;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1602(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1702(Lcom/android/calendar/ImportVCalListActivity;Z)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method
