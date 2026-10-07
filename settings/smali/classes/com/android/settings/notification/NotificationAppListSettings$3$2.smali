.class Lcom/android/settings/notification/NotificationAppListSettings$3$2;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/notification/NotificationAppListSettings$3;

    .line 206
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$200(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "nowSeartKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 211
    .local v1, "lastKeyEmpty":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 212
    .local v2, "nowkeyEmpty":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    .line 213
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v3, v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$302(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v4}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/notification/NotificationAppListSettings;->access$302(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppListSettings;->access$400(Lcom/android/settings/notification/NotificationAppListSettings;)V

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$2;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationAppListSettings;->hideSoftKeyboard()V

    .line 219
    return-void
.end method
