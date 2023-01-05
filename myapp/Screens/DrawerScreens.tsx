import {StyleSheet, Text, View} from "react-native";
import {AMD_GPU, IntelGPU, NvidiaGPU} from "./Comps";
import {createBottomTabNavigator} from "@react-navigation/bottom-tabs";
import {Ionicons} from "@expo/vector-icons";

const TabNavigator = createBottomTabNavigator()

export function LandingScreen() {
    return <View style={styles.container}>
        <View style={styles.header}>
            <Text style={styles.headerText}> Welcome </Text>
            <Ionicons name="md-checkmark-circle" size={32} color="green" />
        </View>
            <Text style={styles.content}> This a new application brings you details about GPUs and Ideologies </Text>
        </View>
}

export function GpuScreen() {
    return <TabNavigator.Navigator>
        <TabNavigator.Screen name="Nvidia" component={NvidiaGPU} />
        <TabNavigator.Screen name="AMD" component={AMD_GPU}/>
        <TabNavigator.Screen name="Intel" component={IntelGPU}/>
    </TabNavigator.Navigator>
}

export function QuotesScreen() {
    return <View style={styles.container}>
        <Text>This will be a quote screen.</Text>
    </View>
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
    }, content: {
        justifyContent: "center",
        alignItems: "center",
        fontSize: 18,
        textAlign: 'center',
    },headerText:{
        fontWeight: '600',
        fontSize: 24,
    },
    header: {
        flexDirection: 'row',
    }
})

const GPUStyle:any = {
    headerStyle: {
        backgroundColor: '#6b00ff',
    },
    headerTintColor: '#fff',
    headerTitleStyle: {
        fontWeight: 'bold',
    },
}
