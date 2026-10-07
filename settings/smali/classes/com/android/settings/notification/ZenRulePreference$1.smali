.class Lcom/android/settings/notification/ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRulePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenRulePreference;

    .line 93
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRulePreference;->mParent:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v3, v3, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/ZenRulePreference;->access$000(Lcom/android/settings/notification/ZenRulePreference;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
