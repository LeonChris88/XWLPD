.class Lcom/android/calendar/AgendaDeleteActivity$6;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$6;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$6;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaDeleteActivity;->finish()V

    return-void
.end method
