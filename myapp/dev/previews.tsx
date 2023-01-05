import React from 'react';
import {ComponentPreview, Previews} from '@react-buddy/ide-toolbox';
import {PaletteTree} from './palette';
import {LandingScreen} from "../Screens/DrawerScreens";

const ComponentPreviews = () => {
    return (
        <Previews palette={<PaletteTree/>}>
            <ComponentPreview path="/DrawerScreens">
                <LandingScreen/>
            </ComponentPreview>
        </Previews>
    );
};

export default ComponentPreviews;
