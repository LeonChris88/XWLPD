.class Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConvNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ConvNameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ConvNameEditText;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ConvNameEditText;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct {v0, v1, p3, v2}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AutoCompleteTextView;)V

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/ConvNameEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
