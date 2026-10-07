.class Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    .line 253
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 258
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "shortcut":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 266
    const/4 v0, 0x1

    return v0

    .line 269
    .end local v1
    :cond_1
    return v0
.end method
