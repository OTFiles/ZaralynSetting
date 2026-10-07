.class Lcom/android/settings/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ListDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/ListDialogPreference;

    .line 151
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 159
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    :cond_1
    return-void
.end method
