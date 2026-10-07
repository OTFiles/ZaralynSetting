.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    .line 133
    iput-object p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userConsentNotify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 139
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 140
    .local v1, "consent":Z
    iget-object v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    invoke-static {v2}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->access$200(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    invoke-static {v2, v1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->access$202(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;Z)Z

    .line 142
    iget-object v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    iget-object v3, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    invoke-virtual {v3}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    invoke-static {v3}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->access$200(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$300(Lcom/android/settings/widget/AppPreference;Z)V

    .line 145
    .end local v1
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
