.class Lcom/android/settings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 214
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .line 218
    if-nez p2, :cond_0

    .line 219
    const/4 v0, 0x0

    .local v0, "subtypeId":I
    goto :goto_0

    .line 221
    .end local v0
    :cond_0
    invoke-static {p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->access$000(I)I

    move-result v0

    .line 222
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v0

    .line 225
    .local v0, "subtypeId":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "selected_spell_checker_subtype"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->access$200(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    .line 236
    return-void
.end method
