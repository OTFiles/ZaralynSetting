.class Lcom/android/settings/notification/NotificationSwitchBarPreference$1;
.super Ljava/lang/Object;
.source "NotificationSwitchBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSwitchBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSwitchBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSwitchBarPreference;

    .line 42
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$000(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$102(Lcom/android/settings/notification/NotificationSwitchBarPreference;Z)Z

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->this$0:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->setChecked(Z)V

    .line 53
    :cond_1
    return-void
.end method
