.class Lcom/android/settings/notification/NotificationAppPreference$1;
.super Ljava/lang/Object;
.source "NotificationAppPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationAppPreference;

    .line 65
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppPreference;->access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppPreference;->access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationAppPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAppPreference;->access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z

    .line 77
    :goto_0
    return-void
.end method
