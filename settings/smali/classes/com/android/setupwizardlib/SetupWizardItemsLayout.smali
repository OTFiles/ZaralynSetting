.class public Lcom/android/setupwizardlib/SetupWizardItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardListLayout;
.source "SetupWizardItemsLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 44
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/setupwizardlib/items/ItemAdapter;

    if-eqz v1, :cond_0

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/items/ItemAdapter;

    return-object v1

    .line 47
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
