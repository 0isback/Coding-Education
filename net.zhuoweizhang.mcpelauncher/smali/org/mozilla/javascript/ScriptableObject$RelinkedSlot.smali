.class Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;
.super Lorg/mozilla/javascript/ScriptableObject$Slot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelinkedSlot"
.end annotation


# instance fields
.field final slot:Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    iget v1, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->access$000(Lorg/mozilla/javascript/ScriptableObject$Slot;)S

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/String;II)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->access$100(Lorg/mozilla/javascript/ScriptableObject$Slot;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getAttributes()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v0

    return v0
.end method

.method getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method markDeleted()V
    .locals 1

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->markDeleted()V

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->markDeleted()V

    return-void
.end method

.method setAttributes(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    return-void
.end method

.method setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$RelinkedSlot;->slot:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method
