.class public Lcom/android/settings/BeanVariable;
.super Ljava/lang/Object;
.source "BeanVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private changeSupport:Ljava/beans/PropertyChangeSupport;

.field private message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private property:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    .line 12
    iput-object p1, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "msg":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    .line 16
    iput-object p1, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/android/settings/BeanVariable;->message:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 48
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 49
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getProperty()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 52
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 53
    return-void
.end method

.method public setProperty(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 24
    .local v0, "oldValue":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "property"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/android/settings/BeanVariable;, "Lcom/android/settings/BeanVariable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    .local p2, "newMsg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 30
    .local v0, "oldValue":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/settings/BeanVariable;->property:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/android/settings/BeanVariable;->message:Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/android/settings/BeanVariable;->changeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "property"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    return-void
.end method
