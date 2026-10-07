.class Lcom/android/settings/notification/ZenRuleSelectionDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Lcom/android/settings/utils/ZenServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenRuleSelectionDialog;

    .line 191
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/ServiceInfo;>;"
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZenRuleSelectionDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Services reloaded: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 196
    .local v0, "externalRuleTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/notification/ZenRuleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 198
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$200()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v3

    .line 199
    .local v3, "ri":Lcom/android/settings/notification/ZenRuleInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 200
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-lez v4, :cond_1

    iget v4, v3, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    .line 202
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-lt v4, v5, :cond_2

    .line 203
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2
    .end local v3
    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v1, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$400(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V

    .line 207
    return-void
.end method
