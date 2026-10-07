.class Lcom/android/settings/widget/MasterCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "MasterCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterCheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/MasterCheckBoxPreference;

    .line 66
    iput-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->access$200(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z

    .line 78
    :goto_0
    return-void
.end method
