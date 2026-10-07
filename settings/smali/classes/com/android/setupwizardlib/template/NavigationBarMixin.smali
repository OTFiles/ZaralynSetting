.class public Lcom/android/setupwizardlib/template/NavigationBarMixin;
.super Ljava/lang/Object;
.source "NavigationBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 38
    return-void
.end method


# virtual methods
.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_navigation_bar:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/NavigationBar;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
