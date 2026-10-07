.class Lcom/android/music/LocalMusicPicker$1;
.super Ljava/lang/Object;
.source "LocalMusicPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/LocalMusicPicker;->initSearchViewDisplay(Landroid/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/LocalMusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/LocalMusicPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/music/LocalMusicPicker;

    .line 762
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$1;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 765
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$1;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$1100(Lcom/android/music/LocalMusicPicker;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 766
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 772
    :cond_0
    return-void
.end method
